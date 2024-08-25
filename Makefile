deploy:
	@echo
	@echo "# Set Project"
	lightdash config set-project --name $(PROJECT)

	@echo
	@echo "# Running DBT"
	lightdash dbt run

	@echo
	@echo "# Deploying"
	lightdash deploy