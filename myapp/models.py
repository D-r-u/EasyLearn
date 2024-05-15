from django.db import models

# Create your models here.
class Login(models.Model):
    username=models.CharField(max_length=100)
    password=models.CharField(max_length=100)
    type=models.CharField(max_length=30)

class User(models.Model):
    name=models.CharField(max_length=100)
    gender=models.CharField(max_length=100)
    dob=models.DateField()
    photo=models.CharField(max_length=300)
    mail=models.CharField(max_length=100)
    phone=models.BigIntegerField()
    place=models.CharField(max_length=100)
    current_education_status=models.CharField(max_length=100)
    LOGIN=models.ForeignKey(Login,on_delete=models.CASCADE)

class Staff(models.Model):
    name = models.CharField(max_length=100)
    gender = models.CharField(max_length=100)
    dob = models.DateField()
    photo = models.CharField(max_length=300)
    mail = models.CharField(max_length=100)
    phone = models.BigIntegerField()
    housename= models.CharField(max_length=100)
    place=models.CharField(max_length=100)
    district=models.CharField(max_length=100)
    pincode=models.IntegerField()
    state=models.CharField(max_length=100)
    qualification=models.CharField(max_length=100)
    proof=models.CharField(max_length=300)
    status=models.CharField(max_length=100)
    current_institution=models.CharField(max_length=100)
    LOGIN = models.ForeignKey(Login, on_delete=models.CASCADE)

class Question(models.Model):
    question=models.CharField(max_length=300)
    answer=models.CharField(max_length=300)
    LOGIN = models.ForeignKey(Login, on_delete=models.CASCADE)

class Test(models.Model):
    STAFF=models.ForeignKey(Staff, on_delete=models.CASCADE)
    testname=models.CharField(max_length=100)
    date=models.DateField()
    time=models.TimeField()


class TestQuestions(models.Model):
    TEST = models.ForeignKey(Test, on_delete=models.CASCADE)
    question = models.CharField(max_length=300,default=0)
    option1=models.CharField(max_length=100)
    option2 = models.CharField(max_length=100)
    option3 = models.CharField(max_length=100)
    option4 = models.CharField(max_length=100)
    correct_answer = models.CharField(max_length=100)
    type = models.CharField(max_length=100,default=0)

class Result(models.Model):
    TEST = models.ForeignKey(Test, on_delete=models.CASCADE)
    USER = models.ForeignKey(User, on_delete=models.CASCADE)
    mark= models.BigIntegerField()

class Complaints(models.Model):
    LOGIN = models.ForeignKey(Login, on_delete=models.CASCADE)
    date = models.DateField()
    complaint=models.CharField(max_length=300)
    reply=models.CharField(max_length=300)
    status=models.CharField(max_length=100)

class Reviews(models.Model):
    date = models.DateField()
    LOGIN = models.ForeignKey(Login, on_delete=models.CASCADE)
    type=models.CharField(max_length=300,default='')
    review=models.CharField(max_length=300)
    rating=models.CharField(max_length=5)

class Staff_Complaints(models.Model):
    USER = models.ForeignKey(User, on_delete=models.CASCADE)
    STAFF = models.ForeignKey(Staff, on_delete=models.CASCADE)
    complaint = models.CharField(max_length=300,default="")
    status = models.CharField(max_length=100,default="")
    date = models.DateField()