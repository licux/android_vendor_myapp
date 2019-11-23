#include "HelloJNI.h"
#include "myGreatLib/Hello.cpp"

#ifdef ANDROID
#include <android/log.h>
#endif

JNIEXPORT jint JNICALL Java_myapp_hellojni_HelloJNI_jniGiveMeANumber(JNIEnv *, jobject)
{
	Hello hello;
	return hello.giveMeANumber();
}

