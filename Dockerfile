FROM python:3.10

#WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY ./app .

RUN ls

# Expose the port on which your Dash app will run
EXPOSE 8050

# Command to run your application with Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:8050", "app:server"]
