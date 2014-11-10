#CC=arm-linux-androideabi-gcc
CC=ndk-gcc -fPIC -pie -fPIE
#RANLIB=ndk-ranlib
USERCC=ndk-gcc
ifeq (${ARCH},)
# arm32
ARCH=arm
#RANLIB=${ARCH}-linux-androideabi-ranlib
#CC_AR=${ARCH}-linux-androideabi-ar -r ${LIBAR}

# aarch64
ARCH=aarch64
RANLIB=${ARCH}-linux-android-ranlib
CC_AR=${ARCH}-linux-android-ar -r ${LIBAR}
endif
ONELIB=0
OSTYPE=android
LINK=
#CC_AR=ndk-ar -r ${LIBAR}
PICFLAGS=
CFLAGS+=${PICFLAGS}
CC_LIB=${CC} -shared -o
CFLAGS_INCLUDE=-I
LDFLAGS_LINK=-l
LDFLAGS_LINKPATH=-L
CFLAGS_OPT0=-O0
CFLAGS_OPT1=-O1
CFLAGS_OPT2=-O2
CFLAGS_OPT3=-O3
CFLAGS_DEBUG=-g
