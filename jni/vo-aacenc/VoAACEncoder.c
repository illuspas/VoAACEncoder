#include <jni.h>
#include <android/log.h>
#include <string.h>
#include "voAAC.h"
#include "cmnMemory.h"
#define LOG_TAG "VoAACEncoder"
#define LOGI(...) ((void)__android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_ARGS__))
#define LOGD(...) ((void)__android_log_print(ANDROID_LOG_DEBUG, LOG_TAG, __VA_ARGS__))
#define LOGE(...) ((void)__android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__))
VO_AUDIO_CODECAPI           AudioAPI;
VO_MEM_OPERATOR             moper;
VO_HANDLE                   hCodec;
AACENC_PARAM                aacpara;
VO_CODECBUFFER              inData;
VO_CODECBUFFER              outData;
VO_AUDIO_OUTPUTINFO         outInfo;
JNIEXPORT jint JNICALL Java_com_sinaapp_bashell_VoAACEncoder_Init
(JNIEnv *env, jobject jobj, jint sampleRate, jint bitRate, jshort nChannels, jshort adtsUsed)
{
    //GetAPI
    if (VO_ERR_NONE != voGetAACEncAPI(&AudioAPI))
    {
        LOGE("Failed to get api handle");
        return 0;
    }
    // set memory operators;
    moper.Alloc = cmnMemAlloc;
    moper.Copy = cmnMemCopy;
    moper.Free = cmnMemFree;
    moper.Set = cmnMemSet;
    moper.Check = cmnMemCheck;
    VO_CODEC_INIT_USERDATA      userData;
    memset(&userData, 0, sizeof(userData));
    userData.memflag = VO_IMF_USERMEMOPERATOR;
    userData.memData = (VO_PTR) &moper;
    //InitAPI
    if (VO_ERR_NONE != AudioAPI.Init(&hCodec, VO_AUDIO_CodingAAC, &userData))
    {
        LOGE("Failed to init AAC encoder");
        return 0;
    }
    //SetParam
    aacpara.sampleRate = sampleRate;
    aacpara.bitRate = bitRate;
    aacpara.nChannels = nChannels;
    aacpara.adtsUsed = adtsUsed;
    if (VO_ERR_NONE != AudioAPI.SetParam(hCodec, VO_PID_AAC_ENCPARAM, &aacpara) )
    {
        LOGE("Failed to set AAC encoder parameters");
        return 0;
    }
    LOGI("VoAACEncoder (http://bashell.sinaapp.com/voaacencoder) @2012.8 ALiang");
    return 1;
}
JNIEXPORT jbyteArray JNICALL Java_com_sinaapp_bashell_VoAACEncoder_Enc
(JNIEnv *env, jobject jobj, jbyteArray jInData)
{
    inData.Length = (*env)->GetArrayLength(env, jInData);
    inData.Buffer = (VO_PBYTE)malloc(inData.Length);
    (*env)->GetByteArrayRegion(env, jInData, 0, inData.Length, inData.Buffer);
    AudioAPI.SetInputData(hCodec, &inData);
    outData.Length = 1024;
    outData.Buffer = (VO_PBYTE)malloc(outData.Length);
    AudioAPI.GetOutputData(hCodec, &outData, &outInfo);
    jbyteArray jarray = (*env)->NewByteArray(env, outData.Length);
    (*env)->SetByteArrayRegion(env, jarray, 0, outData.Length, (jbyte *)outData.Buffer);
    free(inData.Buffer);
    free(outData.Buffer);
    return jarray;
}
JNIEXPORT jint JNICALL Java_com_sinaapp_bashell_VoAACEncoder_Uninit
(JNIEnv *env, jobject jobj)
{
    AudioAPI.Uninit(hCodec);
}