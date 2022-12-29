
install-dependencies: 
	cd server && composer install
	cd frontend && npm install

run:
	cd server && php -S localhost:8001 & cd frontend && npm start
