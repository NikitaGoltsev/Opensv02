format:
	clang-format -i *.c

git_avg:
	git add *
	git commit -m "avg_save"
	git push

all:
	gcc main.c
	./a.out
	rm a.out