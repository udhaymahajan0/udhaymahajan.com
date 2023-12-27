FROM python:3.8-slim
WORKDIR /app
COPY . /app
RUN ls  # This line is for debugging purposes
RUN python -m pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]