function calcul_moyenne()
{
    var note1= prompt("donner la première note: ");
    var coef1= prompt("donner le coefficient de la première note: ");
    var note2= prompt("donner la deuxième note: ");
    var coef2= prompt("donner le coefficient de la deuxième note: ");
    var note3= prompt("donner la troisième note: ");
    var coef3= prompt("donner le coefficient de la troisième note: ");

    var somme = Number(note1)+Number(note2)+Number(note3);
    var coef= Number(coef1)+Number(coef2)+Number(coef3);

    document.write ("Voici la somme: " + somme + "<br>");
    var moyenne= somme/coef;

    document.write("voici la moyenne:" + moyenne + "<br>");

    if (moyenne<10)
    document.write("Vous etes redoublant");
    else
    document.write("Vous etes admis");
}
    function test_age(){
    var age=prompt("donnez votre age:");
    if (age<18)
    {
    document.write("vous etes mineur");
    document.bgColor="red";
    }
    else
    {    
    document.write("vous etes majeur");
    document.bgColor="green";
    }
}
function simple_affichage(){
    var nom = prompt("donnez votre nom");
    var prenom = prompt("donnez votre prenom");

    document.write("<div style='margin:auto ; width:300px ; border:2px solid blue; color:red;'>");
    document.write("Bonjour " + prenom + " " + nom);
    document.write("</div>");
}
function test_couleur(){
    var c = prompt("donnez une couleur :");
    if (c == "rouge" || c=="ROUGE"|| c=="Rouge")
    document.body.style.background="red";
    else if (c == "bleu" || c=="BLEU"|| c=="Bleu")
    document.body.style.background="blue";
    else if (c == "vert" || c=="VERT"|| c=="Vert")
    document.body.style.background="green";
    else if (c == "jaune" || c=="JAUNE"|| c=="Jaune")
    document.body.style.background="yellow";
    else
    document.write("couleur non comprise");
}
