install:
	pip install -r requirements.txt
	cp stcli /usr/local/bin/stcli
	mkdir -p ~/.stcli
	touch ~/.stcli/data.json
	test -s ~/.stcli/data.json || echo "{}" > ~/.stcli/data.json
