PROJECT=dbt-jaffle-shop-lightdash

deploy:
	@echo
	@echo "# Set Project"
	lightdash config set-project --name $(PROJECT)

	@echo
	@echo "# Running dbt"
	lightdash dbt run

	@echo
	@echo "# Deploying"
	lightdash deploy