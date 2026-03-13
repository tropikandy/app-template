"""Starter FastAPI app. Replace with your own code."""
from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def root() -> dict[str, str]:
    """Health check / hello world."""
    return {"message": "Hello from my app!"}
