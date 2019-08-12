test:
	find . -mindepth 2 -maxdepth 2 -type d -not -path "./.git/*" \
	| xargs -I v bash -c "cd v && make test"

clean:
	find . -mindepth 2 -maxdepth 2 -type d -not -path "./.git/*" \
	| xargs -I v bash -c "cd v && make clean"
