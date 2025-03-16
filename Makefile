docker:
	docker build -t smartwatt:latest .

docker-run:
	 docker run -p 5000:5000 smartwatt:latest

run:
	python app.py
