function connexion(){
    var id = prompt("Donnez votre nom d'utilisateur");
    var mdp = prompt("Donnez votre mot de passe");
    if (id == "admin" && mdp =="admin")
    {
        document.write("Bienvenue: " + id);
    }
    else
    {
        alert("Acces redusé");
    }
}
function chaine_caractere(){
    var chaine=prompt("Donnez un mot")
    document.write(chaine.toUpperCase()+"<br>");
    document.write(chaine.toLowerCase()+"<br>");
    document.write("La chaine contient  " + chaine.length+" caracteres  "+"<br>");
    document.write("La premiere lettre est  " + chaine.substr(O,1)+"<br>");
}
function affichage_tableau1(){
    document.write("<table border=2 width=30%;>");
        for (i=0; i <=5; i++)
        {
            document.write("<tr><td>*</td><td>*</td><td>*</td></tr>")
        }
        document.write("</table>");
}
function affichage_tableau2(){
    var id=prompt("Donnez un nombre de ligne pour votre tableau")
    document.write("<table border=2 width=30%;>")
    for (i=0; i <=id; i++)
    {
        document.write("<tr><td>"+i+"</td><td>*</td><td>*</td></tr>")
    }
    document.write("</table>");
}