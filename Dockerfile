# 
FROM python:3.9 

# 
WORKDIR /tmp

# 
RUN pip install fastapi uvicorn scikit-learn 

# 
COPY ./main.py /tmp/

# 
# 
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]

