document.getElementById("souligner").style.textDecoration = "underline";

function Calculer(){
    var a = document.getElementById("inputA").value;
    var b = document.getElementById("inputB").value;
    var c = Number(a) * Number(b);
    T1.value = c;
    
    var d = document.getElementById("inputC").value;
    var e = document.getElementById("inputD").value;
    var f = Number(d) * Number(e);
    T2.value = f;

    var g = document.getElementById("inputE").value;
    var i = document.getElementById("inputF").value;
    var h = Number(g) * Number(i);
    T3.value = h;

    var j = document.getElementById("inputG").value;
    var k = document.getElementById("inputI").value;
    var l = Number(j) * Number(k);
    T4.value = l;
    var S_T = Number(c) + Number(f) + Number(h) + Number(l);
    ST.value = S_T;

TI.value = 10.00

var TT = S_T * 10 / 100
Tt.value = TT

Re.value = 10.00

var soustotal_remise = S_T - TT
STM.value = soustotal_remise

var Exp_Manu = 5.0
E_M.value = Exp_Manu

var Solde_total =  Exp_Manu + S_T
SOL.value = Solde_total

}


function remplir(){

const tabDesc = new Array("portable", "bureau", "ram 8go", "clef usb 16go", "souris", "écran 17 pouces");
var listePrix = document.getElementsByClassName("prixunitaire");
var listeQte = document.getElementsByClassName("quantite");
var listeDesc = document.getElementsByClassName("description");


for (var i=0; i< listeDesc.length;i++){
    var idesc = Math.floor(tabDesc.length * Math.random());
   
    listeDesc[i].value = tabDesc[idesc];
    var qte = Math.floor(10 *Math.random()+1);
    listeQte[i].value = qte;;
    var prix = Math.floor(100 *Math.random()+1);
    listePrix[i].value = prix;

}
}

function ajouterLigne(){
    var newLi = document.getElementById("modeleLigne").cloneNode(true);
    var lastLi = document.getElementById("ligne");
    var pere = document.getElementById("js").firstChild.nextSibling;
    pere.insertBefore(newLi, lastLi);
}

