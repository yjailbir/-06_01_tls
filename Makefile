CFLAGS += -Wall -DMG_ENABLE_OPENSSL=1
LDLIBS += -lssl -lcrypto

.PHONY: all clean

all: dummy-server.bin

dummy-server.bin: main.c mongoose.c
	$(CC) $(CFLAGS) $^ $(LDLIBS) -o $@ 

clean:
	$(RM) *.o *.bin

