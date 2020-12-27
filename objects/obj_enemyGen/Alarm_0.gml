yPos = global.yPos[irandom(3)];
enemyType[0] = obj_enemyS;
enemyType[1] = obj_enemyM;
enemyType[2] = obj_enEspadon;
instance_create_layer(xPos,yPos,"Enemies",enemyType[irandom(2)]);
