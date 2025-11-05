# ---------- Stage 1: Builder ----------
FROM python:3.11-slim AS builder

# Set working directory
WORKDIR /app

# Copy source code
COPY app.py .

# (Optional) install dependencies here if needed in future
# Example: COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt

# ---------- Stage 2: Final Image ----------
FROM python:3.11-alpine AS final

# Set working directory
WORKDIR /app

# Copy only the needed files from builder stage
COPY --from=builder /app/app.py .

# Run the app
CMD ["python", "app.py"]
