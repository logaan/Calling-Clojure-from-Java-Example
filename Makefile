default: clean compile run
clean:
	rm -rf classes/*
compile:
	java -server -cp "./lib/*":./src clojure.main -e "(compile 'com.domain.tiny)"
	javac -cp classes -d classes src/Main.java
run:
	java -cp "lib/clojure-1.3.0.jar:classes" Main
