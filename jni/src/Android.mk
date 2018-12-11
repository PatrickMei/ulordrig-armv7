

LOCAL_PATH := $(call my-dir)
 
include $(CLEAR_VARS)

LOCAL_CFLAGS := \
	-Wall \
	-Wno-strict-aliasing \
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
	/root/ulord/openssl-1.1.0f-arm32-out/include \
	/root/ulord/libuv-arm32/include \
	/root/ulord/ulordrig-arm32/jni/3rdparty \
	/root/ulord/ulordrig-arm32/jni/3rdparty/libcpuid \

LOCAL_LDFLAGS += -L/root/ulord/openssl-1.1.0f-arm32-out/lib -lcrypto
LOCAL_LDFLAGS += -L/root/ulord/libuv-arm32/out/Debug -luv

LOCAL_MODULE := ulordrig-arm32
 
LOCAL_SRC_FILES:= \
	ulordrig.cpp \
	App.cpp \
	App_unix.cpp \
	Cpu_arm.cpp \
	Cpu_unix.cpp \
	Mem.cpp \
	Mem_unix.cpp \
	api/Api.cpp \
	api/ApiState.cpp \
	api/NetworkState.cpp \
	Console.cpp \
	Options.cpp \
	Platform.cpp \
	Platform_unix.cpp \
	Summary.cpp \
	log/ConsoleLog.cpp \
	log/FileLog.cpp \
	log/Log.cpp \
	log/SysLog.cpp \
	net/Client.cpp \
	net/Job.cpp \
	net/Network.cpp \
	net/SubmitResult.cpp \
	net/Url.cpp \
	net/strategies/DonateStrategy.cpp \
	net/strategies/FailoverStrategy.cpp \
	net/strategies/SinglePoolStrategy.cpp \
	crypto/blake2s.c \
	crypto/c_aes128.c \
	crypto/c_blake2s256.c \
	crypto/c_camellia128.c \
	crypto/c_crc32.c \
	crypto/c_des.c \
	crypto/c_gost.c \
	crypto/c_haval5_256.c \
	crypto/c_hmac_md5.c \
	crypto/common.c \
	crypto/c_rc4.c \
	crypto/c_ripemd160.c \
	crypto/cryptoHello.cpp \
	crypto/c_sha1.c \
	crypto/c_sha256.c \
	crypto/c_sha3_256.c \
	crypto/c_sha512.c \
	crypto/c_skein512_256.c \
	crypto/c_whirlpool.c \
	crypto/jtr_crc32.c \
	crypto/jtr_gost.c \
	crypto/jtr_haval.c \
	crypto/jtr_skein.c \
	crypto/keccak1600.c \
	crypto/my_time.c \
	crypto/oneWayFunction.c \
	crypto/PoW.c \
	workers/DoubleWorker.cpp \
	workers/Handle.cpp \
	workers/Hashrate.cpp \
	workers/SingleWorker.cpp \
	workers/Worker.cpp \
	workers/Workers.cpp \
	
include $(BUILD_EXECUTABLE)

