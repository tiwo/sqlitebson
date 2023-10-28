bson.so: bsonext.c
	gcc -fPIC -shared -I/usr/include/libbson-1.0 -o $@ $< /usr/lib/x86_64-linux-gnu/libbson-1.0.so.0.0.0

test: bson.so
	@# borrowed from sqlean
	@sqlite3 :memory: <tests.sql | (! grep -Ex "[0-9_]+.[^1]")
	@echo "Tests PASS"