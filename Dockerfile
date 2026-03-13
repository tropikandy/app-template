# Default: Python 3.12 + FastAPI. Swap this entire file for your stack.
# Node example: FROM node:20-alpine + COPY package*.json . + RUN npm ci + ...
FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN adduser --disabled-password --gecos "" appuser
USER appuser

EXPOSE 8000

# Change port here AND in service.yml + docker-compose.yml if not 8000
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
