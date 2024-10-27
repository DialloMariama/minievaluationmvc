<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<div class="container mt-5">
    <div class="row">
        <div class="col-sm-6">
            <div class="card">
                <div class="card-body" style="background-color: #191970; padding: 20px;">
                    <h5 class="card-title" style="color: white;" class="text-center">LISTE DES COURS</h5>
                    <table class="table table-hover" style="background-color: #191970; color: white;">
                        <thead>
                        <tr style="color: #ffffff;">
                            <th>Matiere</th>
                            <th>Professeur</th>
                            <th>Classe</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${coursList}" var="cours">
                            <tr>
                                <td>${cours.matiere}</td>
                                <td>${cours.professeur}</td>
                                <td>${cours.classe}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div class="col-sm-6">
            <div class="card">
                <div class="card-body" style="background-color: #191970; padding: 20px;">
                    <h5 class="card-title" style="color: white;" class="text-center">AJOUT COURS</h5>
                    <form action="cours" method="post">
                        <div class="mb-3">
                            <label for="matiereInput" class="form-label" style="color: white;">Matiere</label>
                            <input type="text" name="matiere" class="form-control" id="matiereInput">
                        </div>
                        <div class="mb-3">
                            <label for="inputProfesseur" class="form-label" style="color: white;">Professeur</label>
                            <input type="text" name="professeur" class="form-control" id="inputProfesseur">
                        </div>
                        <div class="mb-3">
                            <label for="inputClasse" class="form-label" style="color: white;">Classe</label>
                            <input type="text" name="classe" class="form-control" id="inputClasse">
                        </div>
                        <button type="submit" class="btn btn-light" class="d-block mx-auto">Ajouter</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
