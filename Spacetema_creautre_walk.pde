//Har prøvet at lave et slags spacetema, hvor der inkluderes Rumvæsner,stjerner,astroider,planeter og et expanding sort hul.
int c=1;//farve inttype der gør at de skifter i farven.
int x=10;//x standard værdi det gør at ting kan bevæge sig hvis jeg siger fx rect(100+x,100,10,10); dvs den rykker sig via x aksen.
float xg=(random(-100,255));//Gør bare så nogen af cirklenerne/astroiderne starter et tilfældigt sted på skærmen.
float xd=(random(255,450));//same som xg.
int y=10;//y standard værdi som int x=10. SPiller sammenhæng med speed.
int speed=2;//Hastigheden til stjernerne,planterne og astroiderne og sort hul.
int flotFirkanty=15;//en inttype for min "stjerneværdi" som er på y-aksen.
int flotFirkantx=15;//stjerneværdi, men dog på x-aksen.
int speedhastighed=4;//stjernernes hastighed.
int marsx=8;//Den tilhøre under ellipsen med fast farve, som er dens seperate værdi til, ellipsen som kaldes mars, og er dens x værdi.
int marsy=8;//Det er mars y værdi.
int marshastighed=1; //Mars hastighed
float height=(random(4,20));//gør så den ændre sig i størrelse i højden, og bliver større eller mindre
float width=(random(4,25));
void setup(){//køres 1 gang og laver vinduet og antallet af framerates der er.
background(0,0,255);
size(750,750);
frameRate(14);
}
void draw(){
  loop();//looper farve(C) width og height så de bliver randomized.
  println(height=(random(4,20)));// println printer random værdi i height og width.
  println(width=(random(4,25)));
move();
display();
}
void move()
{
//height=height+speed;
//width=width+marshastighed;
c=c+speed;//farve
x=x+speed;//x hastighed til at udfolde sig.
y=y+speed;//y hastighed.
flotFirkantx=flotFirkantx+speedhastighed;//stjerne hastighed x værdi
flotFirkanty=flotFirkanty+speedhastighed;//stjernehastighed y værdi
marsx=marsx+marshastighed;// mars hastighed langs x akse
marsx=marsy+marshastighed;// mars hastighed langs y akse
}
void display()
{
clear();
  ellipse(x,y,40,40);//hoved på første creature, har ikke ændret dette siden første aflevering.
ellipse(x,y-25,height,25);//øjnene på første creature.

ellipse(x+80,y-100,40,40);//rumvæsen mave
ellipse(x+80,y-125,height,25);//rumvæsen hoved.
ellipse(x+80,y-123,height,7);//rumvæsen øjne.
ellipse(x,y-23,height,7); //rumvæsen/creature.Har puttet height, istedet for en given værdi så hovedet "bevæger sig". eller ser lidt mere skræmmende ud.
ellipse(xg-x,xd+y+200,20+height,20+width);//astroide

ellipse(xg-x,xd-y+100+x,40+speed,40);//astroide

ellipse(x-25,y-350,1+x,1+x);//det sorte hul der udvikler sig, til at blive støre.

rect(flotFirkantx+xg-40,flotFirkanty-100,height,width);//Det er stjernene der bliver formet på skærmen., de bevæger sig som om de blinker(eller det prøver de på)
rect(flotFirkantx+xg+100,flotFirkanty-80,height,width);
rect(flotFirkantx-xg,flotFirkanty+155,height,width);
rect(flotFirkantx+xd,flotFirkanty+75,height,width);
rect(flotFirkantx+xg-700,flotFirkanty-475,height,width);
rect(flotFirkantx-450,flotFirkanty-225,height,width);
rect(flotFirkantx,flotFirkanty-245,height,width);
rect(flotFirkantx-240,flotFirkanty+75,height,width);
rect(flotFirkantx-350,flotFirkanty-275,height,width);
fill(40,85,130);
ellipse(flotFirkantx+80,flotFirkanty-160,100,100);//en del af mars
fill(34,139,234);
ellipse(flotFirkantx+95,flotFirkanty-160,30,35);// en del af mars.
fill(34,139,37);
ellipse(flotFirkantx+50,flotFirkanty-160,15,15);//en del af mars.
fill(34,139,37);
ellipse(flotFirkantx+70,flotFirkanty-130,24,24);//en del af mars.
fill(188,143,134);
ellipse(marsx-70,marsy+130,90,90);//laver mars (skulle laves om men glemte hvad der skulle laves om )
fill(150+c,255,c);//Gør så de skifter farver, i sammehæng med at c ændre sig.

}
