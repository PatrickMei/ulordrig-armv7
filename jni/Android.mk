

LOCAL_PATH := $(call my-dir)
 
include $(CLEAR_VARS)

LOCAL_CFLAGS := \
	-Wall \
	-O3 \
	-DNDEBUG \
	-Ofast \
	-std=gnu99 \
        -mfloat-abi=softfp \
        -mfpu=neon \
	-flax-vector-conversions \
	-DVERSION=\"0.4.0\" \
	-DULORDRIG_ARM \
	-DULORDRIG_NO_LIBCPUID \
	-DULORDRIG_NO_HTTPD \
	-DULORDRIG_NO_TLS \
	-DULORDRIG_NO_ASM \
	-DUNICODE

LOCAL_CPPFLAGS := \
	-Wall \
	-fno-exceptions \
	-fno-rtti \
	-O3 \
	-DNDEBUG \
	-Ofast \
	-mfloat-abi=softfp \
	-mfpu=neon \
	-flax-vector-conversions \
	-DULORDRIG_ARM \
	-DULORDRIG_NO_LIBCPUID \
	-DULORDRIG_NO_HTTPD \
	-DULORDRIG_NO_TLS \
	-DULORDRIG_NO_ASM \
	-DUNICODE

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/src/3rdparty/openssl-armv7/include \
	$(LOCAL_PATH)/src/3rdparty/libuv-armv7/include \
	$(LOCAL_PATH)/src \
	$(LOCAL_PATH)/src/3rdparty \
	$(LOCAL_PATH)/3rdparty/libcpuid \

LOCAL_LDFLAGS += -L$(LOCAL_PATH)/src/3rdparty/openssl-armv7/lib -lcrypto
LOCAL_LDFLAGS += -L$(LOCAL_PATH)/src/3rdparty/libuv-armv7/lib -luv

LOCAL_MODULE := ulordrig-armv7
 
LOCAL_SRC_FILES:= \
	src/ulordrig.cpp \
	src/App.cpp \
	src/App_unix.cpp \
	src/Cpu_arm.cpp \
	src/Cpu_unix.cpp \
	src/Mem.cpp \
	src/Mem_unix.cpp \
	src/api/Api.cpp \
	src/api/ApiState.cpp \
	src/api/NetworkState.cpp \
	src/Console.cpp \
	src/Options.cpp \
	src/Platform.cpp \
	src/Platform_unix.cpp \
	src/Summary.cpp \
	src/log/ConsoleLog.cpp \
	src/log/FileLog.cpp \
	src/log/Log.cpp \
	src/log/SysLog.cpp \
	src/net/Client.cpp \
	src/net/Job.cpp \
	src/net/Network.cpp \
	src/net/SubmitResult.cpp \
	src/net/Url.cpp \
	src/net/strategies/DonateStrategy.cpp \
	src/net/strategies/FailoverStrategy.cpp \
	src/net/strategies/SinglePoolStrategy.cpp \
	src/crypto/blake2s.c \
	src/crypto/c_aes128.c \
	src/crypto/c_blake2s256.c \
	src/crypto/c_camellia128.c \
	src/crypto/c_crc32.c \
	src/crypto/c_des.c \
	src/crypto/c_gost.c \
	src/crypto/c_haval5_256.c \
	src/crypto/c_hmac_md5.c \
	src/crypto/common.c \
	src/crypto/c_rc4.c \
	src/crypto/c_ripemd160.c \
	src/crypto/cryptoHello.cpp \
	src/crypto/c_sha1.c \
	src/crypto/c_sha256.c \
	src/crypto/c_sha3_256.c \
	src/crypto/c_sha512.c \
	src/crypto/c_skein512_256.c \
	src/crypto/c_whirlpool.c \
	src/crypto/jtr_crc32.c \
	src/crypto/jtr_gost.c \
	src/crypto/jtr_haval.c \
	src/crypto/jtr_skein.c \
	src/crypto/keccak1600.c \
	src/crypto/my_time.c \
	src/crypto/oneWayFunction.c \
	src/crypto/PoW.c \
	src/workers/DoubleWorker.cpp \
	src/workers/Handle.cpp \
	src/workers/Hashrate.cpp \
	src/workers/SingleWorker.cpp \
	src/workers/Worker.cpp \
	src/workers/Workers.cpp \
	
include $(BUILD_EXECUTABLE)

