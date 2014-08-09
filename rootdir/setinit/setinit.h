#ifndef _SETINIT_H
#define _SETINIT_H

#include <android/log.h>
#include <sys/types.h>

#define logi(...) __android_log_print(ANDROID_LOG_INFO , "setinit", __VA_ARGS__)
#define loge(...) __android_log_print(ANDROID_LOG_ERROR , "setinit", __VA_ARGS__)

#endif
