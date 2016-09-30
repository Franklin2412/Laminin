//
// Created by Franklin Michael on 06/05/16.
//

#include <string.h>
#include <jni.h>

jstring java_com_laminin_franklinmichael_ndktest_MainActivity_string_from_jni(JNIEnv* env, jobject thiz){
    return (*env) -> NewStringUTF(env, "Hello from JNI !");
}

jstring Java_com_laminin_franklinmichael_ndktest_MainActivity_string_1from_1jni(JNIEnv* env, jobject thiz){
    return (*env) -> NewStringUTF(env, "Hello from JNI !");
}
//jstring string_from_jni(JNIEnv* env, jobject thiz){
//    return (*env) -> NewStringUTF(env, "Hello from JNI !  Compiled with ABI " ABI ".");
//}