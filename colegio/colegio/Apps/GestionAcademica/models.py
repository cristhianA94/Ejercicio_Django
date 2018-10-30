from django.db import models

# Create your models here.
class Alumno(models.Model):
    ApellidoPaterno = models.CharField(max_length=35)
    ApellidoMaterno = models.CharField(max_length=35)
    Nombres = models.CharField(max_length=35)
    Cedula = models.CharField(max_length=10)
    FechaNacimiento = models.DateField()
    Sexos = (('F', 'Femenino'), ('M','Masculino'))
    Sexo = models.CharField(max_length=1, choices=Sexos, default='M')

    def NombreCompleto(self):
        #cadena = "{0} {1}, {2}"
        return  self.Nombres +" "+ self.ApellidoPaterno + " " +self.ApellidoMaterno
    def __str__(self):
        return self.NombreCompleto()

class Curso(models.Model):
    Nombre = models.CharField(max_length=50)
    Estado = models.BooleanField(default=True)

    def __str__(self):
        return self.Nombre +" "+self.Estado

class Matricula(models.Model):
    Alumno = models.ForeignKey(Alumno, null=False, blank = False, on_delete=models.CASCADE)
    Curso = models.ForeignKey(Curso, null=False, blank = False, on_delete=models.CASCADE)
    #Captura la fecha y hora del sistema
    FechaMatricula = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.Alumno, self.Curso.Nombre
