# Makefile para pp-gateway

dev:
	@echo "🟢 Iniciando Gateway en modo DESARROLLO..."
	@docker network create web-gateway 2>/dev/null || true
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d --remove-orphans

prod:
	@echo "🚀 Iniciando Gateway en modo PRODUCCIÓN..."
	@docker network create web-gateway 2>/dev/null || true
	docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d --remove-orphans

down:
	@echo "🛑 Deteniendo Gateway..."
	docker-compose down

logs:
	docker-compose logs -f
