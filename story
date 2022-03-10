#include <stdio.h>
#include <time.h>
#include <string.h>

//when will I ever spell inlcude right the first time

//-------------Global Variables--------------

int a, b, c, d, e, i, r; //you never know what letters you might need
                         //(to be honest, I really only need like 2 global variables)
string_t yourName, birdName;
float fac = 1;

//-----------------Functions-----------------

string_t upper(char s[]) {
    int i;
    for (i = 0; s[i]!='\0'; i++) {
        if(s[i] >= 'a' && s[i] <= 'z') {
            s[i] = s[i] -32;
        }
    }
    return s[];
}
void dramaticPause(int iterations) {
    int i;
    for (i = 0; i < iterations; i++) {
        printf(" .");
        sleep(1);
    }
}

//ah you can't set a parameter to a preset value in c, now my job becomes tedious
void textReader(char text[], int speed) {
    int c;
    while (text[c] != '\0') {
        printf(text[c]);
        delay(speed/fac);
        c++;
    }
}

char choice(char input, char choice1, char choice2, char choice3) {
    //all I had to do was use an AND operator instead of an OR operator
    while (input != choice1 && input != choice2 && input != choice3) {
        printf("Please enter your choice again. Make sure to match case. ");
        scanf("%c", &input); 
    }
    return input;
}

void roadMap(int showNames) {
    if (showNames == 1) {
        textReader("\nStart --> 'F' --> 'V' -(50% chance)-> Successful Fisherman", 65); 
        textReader("\nStart --> 'F' --> 'V' -(50% chance)-> Free-falling Fish-finder", 65);
        textReader("\nNote that the Yes/No Question asked in option 'V' won't do anything", 65);
        textReader("\nStart --> 'F' --> 'W' --> Sea's Possession", 65);
        textReader("\nStart --> 'T' --> 'J' --> Master Storyteller", 65);
        textReader("\nStart --> 'T' --> 'D' --> Forgotten Prisoner", 65);
        textReader("\nStart --> 'T' --> 'A' --> Pirating Crimeboss", 65);
        textReader("\nStart --> 'S' --> 'C' --> Greedy Death", 65);
        textReader("\nStart --> 'S' --> 'I' --> Shipwreck Wraith", 65);
        textReader("\nStart --> 'S' --> 'R' -(20% chance)-> Crazy Elder", 65);
        textReader("\nStart --> 'S' --> 'R' -(80% chance)-> Shipwreck Wraith", 65); 
        textReader("\nAll endings: Succesful Fisherman - Free-falling Fish-finder - Sea's Possession\nMaster Storyteller - Forgotten Prisoner - Pirating Crimeboss\nGreedy Death - Shipwreck Wraith - Crazy Elder\n\n", 65);    
    }
    else if (showNames == 0) {
        textReader("\nStart --> 'F' --> 'V' --> Ending 1 or Ending 2 (random chance)", 65);
        textReader("\nStart --> 'F' --> 'W' --> Ending 3", 65);
        textReader("\nStart --> 'T' --> 'J' --> Ending 4", 65);
        textReader("\nStart --> 'T' --> 'D' --> Ending 5", 65);
        textReader("\nStart --> 'T' --> 'A' --> Ending 6", 65);
        textReader("\nStart --> 'S' --> 'C' --> Ending 7", 65);
        textReader("\nStart --> 'S' --> 'I' --> Ending 8", 65);
        textReader("\nStart --> 'S' --> 'R' --> Ending 9 or Ending 8 (random chance)", 65);
    }
}

char intro(char decision) {
    int ran3 = randint(1, 2), ran4 = randint(1, 2);
    dramaticPause(3);
    textReader(" *A bird squawks* You're awake! Welcome, to the Kingdom of Ican't-WriteNamesdom!", 65);
    sleep(1);
    textReader("\nThat is a mouthful, isn't it? We people of Ican'tWriteNamesdom normally refer to our home as the I.C.W.N.", 65);
    sleep(2); 
    textReader("\nStill long, but nowhere near as absurd!\n", 65);
    dramaticPause(3);
    sleep(1);
    if (ran3 == 1) {
        textReader(" That was a joke.", 65);
        sleep(1);
    }
    else if (ran3 == 2) {
        textReader( " Okaaay then.", 65);
    }
    textReader("\nAnyhow, you're the first visitor we've had in a long, long time;", 65);
    sleep(1);
    textReader("\nit's actually quite a wonder we even speak the same langauge.", 65);
    sleep(2);
    textReader("\n*You finally open your eyes and try to rise from lying down* Don't worry about anything yet, I'll explain.", 65);
    sleep(1);
    textReader("\nIt looks like your sea-venturing crew had a bad tumble down our coast a couple nights prior.", 65);
    sleep(2);
    textReader("\nIt also looks like you were the only survivor *Bird squawks angrily*", 65);
    sleep(1);
    textReader("\nWhoops, correction: you and your bird were the two survivors.", 50);
    sleep(2);
    textReader("\nAnyways, I took you both in for several days and cared for you.", 65);
    sleep(1);
    textReader("\nAnd now, enough of my rant, here's more important information: the I.C.W.N. is an island,", 65);
    sleep(1);
    if (ran4 == 1) {
        textReader("\nand not many people live here.", 65);
        sleep(1);
    }
    else if (ran4 == 2) {
        textReader("\nOur island is fairly isolated.", 65);
        sleep(1);
    }
    textReader("\nI'm the fisherman, if it wasn't clear, and my name is Fin.", 65);
    sleep(1);
    textReader("\nIf you decide to venture into the island, you might want to try the town.", 65);
    sleep(2);
    textReader("\nOr you could try your luck trying to find something out of your ship,", 65);
    sleep(1);
    textReader("\nbut either way I think you're ready to leave my humble fisherman's hut.", 65);
    sleep(2);
    textReader("\nWait! Before you leave, you have to tell me your name, and your bird's name.", 65);
    sleep(1);
    printf("\nWhat's your first name? ");
    scanf("%s", &yourName);
    printf("What's your bird's name? ");
    scanf("%s", &birdName);
    textReader("Now I think you can go an explore, here's a map.", 65);
    sleep(1);
    textReader("\nRemember, if you ever need any help ", 65);
    printf(yourName);
    textReader(" you always have a friendly fisherman to ask.\nGood luck with your adventure!", 65);
    sleep(2);
    textReader("\n*You leave Fisherman Fin's hut*\n", 65);
    sleep(1);
    textReader("FRONT OF FISHERMAN FIN's HUT", 65);
    textReader("\n*What should you do?*", 65);
    textReader("\n*There are several options: return to Fisherman Fin's hut, go to the town, or visit the shipwreck.\n", 65);
    printf("Where should you go? (F for Fin's hut, T for the town, S for the shipwreck) ");
    scanf("%c", &decision);
    decision = choice(decision, 'F', 'T', 'S');
    return decision;
}

//-------------------Main--------------------

int main() {
    char decision, dec, decision2, decision3, decision4, beginningCondition, param;
    int ran, ran2;
    
    textReader("Best experienced by having console screen expanded.\n\n", 50);
    sleep(2);
    textReader("Please set speed of story (0.25 is slow, 1 for normal, 2 is fast) ", 50);
    scanf("%f", &fac);
    printf("\n\n");
    textReader("Would you like to see a roadmap of the story, to see what you have to input to achieve a specific ending? (Y, N) ", 50);
    scanf("%c", &beginningCondition);
    scanf("%c", &beginningCondition);
    if (beginningCondition == 'Y' || beginningCondition == 'y') {
        textReader("Would you like to see the ending names as well? It might spoil the story. (1 for Yes, 0 for No) ", 50);
        scanf("%i", &param);
        roadMap(param);
    }
    else {
        printf("\n\n");
    }
//-------------------Intro-------------------
    
    decision = intro(decision);
    
//------------------Middle-1-----------------

    if (decision == 'F') {
        textReader("FISHERMAN FIN's HUT", 65);
        textReader("\nHello again, ", 65);
        printf(yourName);
        textReader(" do you need anything? (Y, N) ", 65);
        scanf("%c", &dec);
        scanf("%c", &dec);
        if (dec == 'Y') {
            textReader("\nHmm", 65);
            dramaticPause(3);
            textReader("Perhaps I can give you some food.", 65);
            textReader("\nHave this fish as a token of our friendship!", 65);
            sleep(1);
            //hasFish = 1;
            printf("*%s", birdName); 
            textReader(" squawks in gratitude*", 65);
            sleep(1);
            textReader("\nThat fish may come in handy later, or you could just eat it.", 65);
            sleep(1);
            textReader("\nNow I really think you should be going, there's so much to experience!", 65);
            sleep(2);
            textReader("\nGood luck with your adventure!", 65);
            sleep(2);
            textReader("\n*You leave Fisherman Fin's hut*\n", 65);
            sleep(2);
            textReader("FRONT OF FISHERMAN FIN's HUT", 65);
            textReader("\n*What should you do?*", 65);
            textReader("\n*There are two options: to go to the town, or visit the shipwreck*\n", 65);
            printf("Where should you go? (V for the village/town, W for the shipwreck");
            scanf("%c", &decision3);
            decision3 = choice(decision, 'V', 'W', '|');//ignore the fourth paramter, I just need it for the function to work
        }
        else if (dec == 'N') {
            textReader("\nEh, I'll give you this random fish anyways.", 65);
            sleep(1);
            //hasFish = 1;
            textReader("\nWhy? Well you can eat it, I think, and you could maybe use it for something.", 65);
            dramaticPause(3);
            textReader("\nIf you really want to know, you could probably give it to somebody in town, if you're lucky", 65);
            sleep(1);
            textReader("\nI don't go into town often, and if any of them wants fish, they'll buy it.", 65);
            sleep(1);
            textReader("\nAnyways, go on now, you're probably eager to earn that money.", 65);
            sleep(2);
            printf("*%s", birdName); 
            textReader(" squawks agreeably*", 65);
            sleep(1);
            textReader("\nGood luck with your adventure!", 65);
            sleep(2);
            textReader("\n*You leave Fisherman Fin's hut*\n", 65);
            sleep(2);
            textReader("FRONT OF FISHERMAN FIN's HUT", 65);
            textReader("\n*What should you do?*", 65);
            textReader("\n*There are two options: to go to the town, or visit the shipwreck*\n", 65);
            printf("Where should you go? (V for the village/town, W for the shipwreck");
            scanf("%c", &decision3);
            decision3 = choice(decision, 'V', 'W', '|'); //Fourth parameter only needed for funtion to run
        }
    }
    
//------------------Middle-2-----------------
    
    else if (decision == 'T') {
        textReader("TOWN", 65);
        textReader("\n*You arrive in town, around midday, when most people are about*", 65);
        sleep(1);
        textReader("\n*You quietly observe the hustle of the small town, it appears you've arrived on marketplace day*\n", 65);
        dramaticPause(3);
        printf("\n*%s", birdName); 
        textReader(" squawks urgently to you to get your attention, but too late*", 65);
        sleep(1);
        textReader("\nHey! Who are you! And why do you have a bird on your shoulder?", 65);
        sleep(1);
        textReader("\n*You turn towards the voice and find a severe-looking man frowning at you*", 65);
        textReader("\nWell? Who are you? I've never seen you around.", 65);
        sleep(2);
        textReader("\n*You explain yourself to the man, giving your name, saying that you had been shipwrecked and found by Fin, and that the bird is a companion*", 65);
        sleep(1);
        textReader("\n*The man's frown deepens*", 65);
        textReader("\nA foreigner!", 65);
        sleep(1);
        textReader("\n*The man starts to back away, but then he appears thoughtful*", 65);
        sleep(1);
        textReader("\nPerhaps, you can help me", 100);
        dramaticPause(3);
        textReader("you see, I'm the owner of this of one food-place here on the I.C.W.N.", 100);
        sleep(1);
        textReader("\nBusiness hasn't been that great of late, but I have a radical idea now that you're here!", 65);
        sleep(1);
        textReader("\nWe need something new! Something exciting, and seeing the bond you have between you and your bird", 65);
        textReader("\nI think we can make a performing team out of you!", 65);
        sleep(1);
        textReader("\nYou can perform at my resturaunt, and more customers will come to my place!", 65);
        textReader("\nI'll pay you and your bird handsomely for performing.", 65);
        textReader("\nAnd just imagine! This could bridge the rift between the I.C.W.N. and the rest of the world!", 65);
        textReader("\nSo, what do you say ", 65);
        printf(yourName);
        textReader("? Are you in?", 65);
        textReader("\n*What should you do?*", 65);
        textReader("\n*There are several options: join the Businessman, decline to join and continue to explore the town, or attack and steal from the man.\n", 65);
        printf("Where should you go? (J to join Businessman, D to decline Businessman, A to decline, attack, and steal from the Businessman) ");
        scanf("%c", &decision2);
        decision2 = choice(decision, 'J', 'D', 'A');
    }
    
//------------------Middle-3-----------------
    
    else if (decision == 'S') {
        textReader("SHIPWRECK SITE", 65);
        textReader("\n*It took you a while to get to the shipwreck, and it's now approaching evening*", 65);
        sleep(2);
        printf("\n*%s", birdName); 
        textReader(" caws nervously several times*", 65);
        sleep(1);
        textReader("\n*The sound echoes eeriely around the empty, rocky coast*", 65);
        sleep(1);
        textReader("\n*The shipwreck is strecthed out in front of you, the mast has snapped and hangs on an outcrop*", 65);
        sleep(2);
        textReader("\n*The hull has an enormous hole that looks into the cargo hold of the ship*", 65);
        sleep(1);
        textReader("\nThere it is, ", 65);
        printf(birdName);
        textReader(", that's the stuff we're after. With just a fraction of it, we can make a new business here on the I.C.W.N.", 65);
        sleep(1);
        textReader("\n*You start towards it, and peer around the hidden cove on which it had beached upon*", 65);
        sleep(1);
        textReader("\nThis is a strange place-", 100);
        textReader("\nWEEEEEEEEOOOO", 65);
        sleep(1);
        printf("\n*%s", birdName); 
        textReader(" squawks loudly, nervously, and flies from your shoulder in fright*", 65);
        sleep(1);
        textReader("\n*Eerie green light fills the cove and the sound continues to echo around the rocks*", 65);
        printf("\n%s", yourName);
        textReader(" leeaaaavee frommmm thiiissss plllaaaaceee", 100);
        textReader("\n*You tremble with fear, and you now have to make a decision*", 65);
        textReader("\n*Should you continue with your current ill-fated endeavor? Try to investigate the strange light? Should you flee???*", 65);
        printf("\nWhere should you go? (C to continue, I to investigate the light, R to run away) ");
        scanf("%c", &decision4);
        decision4 = choice(decision, 'C', 'I', 'R');
    }
    
//-------------------End-1-------------------   
    
    if (decision3 == 'V') {
        textReader("TOWN", 65);
        textReader("\n*You arrive in town, around sunset, when not many people were about*", 65);
        sleep(1);
        //rng. . .
        ran = randint(1, 2);
        if (ran == 1) {
            textReader("\n*You see an old beggar crouched near a storefront, and anybody who passed by completely ignored him*", 65);
            textReader("\n*You even see a young boy kick the beggar and run away laughing*", 65);
            sleep(1);
            textReader("\n*You feel incredibly sorry for the beggar, and you decide to give him the fish which Fisherman Fin had given you*", 65);
            sleep(1);
            textReader("\n*The beggar looks up at you and the fish*", 65);
            sleep(1);
            textReader("\nThank you, thank you so much, good human.", 100);
            textReader("\n*You are deeply touched by the beggar's gratitude and his situation*", 65);
            sleep(1);
            textReader("\n*Night quickly falls, and you decide to head back to Fisherman Fin's hut for contemplation*", 65);
            sleep(1);
            textReader("\nFISHERMAN FIN's HUT", 65);
            textReader("\n*By the time you reach Fisherman Fin's hut, you have made up your mind*", 65);
            textReader("\n*Seeing the affect that the fish had upon the beggar, you decide to ask to join Fisherman Fin permanently, as an apprentice*", 65);
            sleep(1);
            textReader("\nYou really want to become a fisher ", 65);
            printf(yourName);
            textReader("? Hmmm", 65);
            dramaticPause(3);
            textReader("\nWhy not? I'll train you to be a great fisher!", 65);
            sleep(1);
            printf("\n*%s", birdName);
            textReader(" squawks with delight and flies in a circle around the ceiling of the hut*", 65);
            sleep(1);
            textReader("\n*After several months of training, you finally become a competent fisherperson, and you are now respected amongst the I.C.W.N.*", 65);
            textReader("\n*The beggar to whom you had given your first fish is now a successful employee at a certain restuarant on the I.C.W.N.*", 65);
            textReader("\n*You had become close friends, but your first loyalty will always be to Fisherman Fin, the man who taught you everything*", 65);
            textReader("\n*You are now, ", 65);
            printf(yourName);
            textReader(" the Successful Fisherperson*", 65);
            textReader("\n\nENDING: SUCCESSFUL FISHERPERSON\n\n", 100);
        }
        
//-------------------End-2-------------------       
        
        if (ran == 2) {
            textReader("\n*The fish that you have in your pack starts to move and it wildly bursts out from the pack*", 65);
            sleep(1);
            printf("\n*%s", birdName);
            textReader(" squawks in terror*", 65);
            textReader("\n*You had no idea that the fish was still alive, both you and your bird thought it was dead*", 65);
            sleep(1);
            textReader("\n*You want the fish, you NEED the fish, so you chase after it*", 65);
            printf("\n*%s", birdName);
            textReader(" also starts flying towards it; the bird's natural instincts of hunting now activated*", 65);
            sleep(1);
            textReader("\n*Yet, even with both of your combined efforts, the fish still manages to flop extremely quickly and avoid any capture*", 65);
            sleep(1);
            textReader("\n*The fish heads into the central square of the town, and people stop and stare as it continues to fool both a human and a bird*", 65);
            textReader("\n*The fish takes a winding path around the town, through wilderness, and manages to come into the view of Fisherman Fin's hut*", 65);
            sleep(1);
            textReader("\nFISHERMAN FIN's HUT", 65);
            sleep(1);
            textReader("\n*Fisherman Fin appears from the front of the hut, and stares in shock at the fish*", 65);
            printf("\n%s", yourName);
            textReader(" what's going on?! Why is that fish alive?", 65);
            textReader("\n*You can't stop to talk, the fish is still evading capture*", 65);
            sleep(1);
            textReader("\n*Strangly enough, the fish doesn't hop into the sea, it just continues to flop on the ground*", 65);
            textReader("\n*The long night has passed, with the fish still at large*", 65);
            textReader("\n*The fish has now become an obsession for both you and your bird*", 65);
            textReader("\n*You explain to your bird, but mainly to yourself*", 65);
            textReader("\nIt has to be captured and eaten, it deserves not to live! It needs to die! It needs to die!!!", 65);
            sleep(1);
            textReader("\n*You continue to chase it. Eventually, the fish hops into an incredibly deep well, the main source of water for the I.C.W.N.*\n", 65);
            dramaticPause(3);
            textReader("\n*You dive into the well*", 65);
            textReader("\n*You fall for a long time ", 65);
            dramaticPause(5);
            textReader(" a very long time*", 65);
            textReader("\n*You continue to fall*\n", 65);
            dramaticPause(3);
            sleep(1);
            textReader("\n*At this point, it's probably optimal to end the story short*", 40);
            textReader("\n*You are now, ", 40);
            printf(yourName);
            textReader(" the Free-Falling Fish-Finder*", 65);
            textReader("\n\nENDING: FREE-FALLING FISH-FINDER\n\n", 100);
        }
    }
    
//-------------------End-3-------------------
    
    else if (decision3 == 'W') {
        textReader("SHIPWRECK", 65);
        textReader("\n*You had decided to camp for the night before reaching the shipwreck, and when you reached the shipwreck, it was the mid of day*", 65);
        sleep(1);
        textReader("\n*The sea had broken most of the ship apart and many fragments lay strewn around the beach*", 65);
        textReader("\nWell, ", 65);
        printf(birdName);
        textReader(" this is what remains of our quest for exploration.", 65);
        textReader("\n*You approach the shipwreck, and don't see many things that could possibly be retrieved*\n", 65);
        sleep(1);
        dramaticPause(3);
        textReader("*\nYou simply stare at the shipwreck for some time, reflecting*", 65);
        textReader("*\nYou then decide to eat the fish, in front of the sea*", 65);
        sleep(1);
        textReader("*\nAs you and ", 65);
        printf(birdName);
        textReader(" eat the fish, the waves seem to crash harder against the cove, but it's not yet particulary unusual*", 65);
        sleep(1);
        textReader("*\nThe fish is about half-eaten now, and the waves are noticeably higher and sea spray starts to reach you*", 65);
        sleep(1);
        textReader("*\nThe fish is nearly finished, and the waves are so high now that they can reach up to the highest part of the beach*", 65);
        sleep(1);
        textReader("*\nYou and your bird have already backed up quite a bit and are quite worried at the sudedn turn in conditions*", 65);
        sleep(1);
        textReader("*\nYou finally take the last bite of fish, and your bird eats all the scraps you couldn't. All that remains is a skeleton*", 65);
        sleep(1);
        textReader("*\nThe sky is now dark with stormclouds, and the sea has risen up to enormous heights*", 65);
        sleep(1);
        textReader("*\nThe sea booms around the cove, drowning out any outcry from you or your bird*\n", 65);
        sleep(1);
        dramaticPause(3);
        printf(upper(yourName));
        textReader(" YOU HAVE KILLED AND EATEN ONE OF THE SEA, SUCH AN ACT OF DISRESEPCT IS TERRIBLE!", 65);
        sleep(1);
        textReader("\nYOU WILL BE PUNISHED, FOR EATING ONE OF THE SEA, YOU WILL BE EATEN BY THE SEA!", 65);
        sleep(1);
        textReader("\n*Before you can do anything, the sea rises up to touch the stormclouds and crashes down upon you*", 65);
        textReader("\n*The force of the water drags you away from the coast, and you choke and drown*", 65);
        textReader("\n*You fall to the bottom of the sea, at the mercy of the ocean*", 65);
        sleep(1);
        textReader("\n*You are now, ", 65);
        printf(yourName);
        textReader(" the Sea's Possession*", 65);
        textReader("\n\nENDING: SEA'S POSSESSION\n\n", 100);
    }
    
//-------------------End-4-------------------
    
    if (decision2 == 'J') {
        textReader("Excellent choice ", 65);
        printf(yourName, "!");
        sleep(1);
        textReader("\nI promise, you won't regret this decision!", 65);
        sleep(1);
        textReader("\nYour first performance will be this night, I'll provide you with all the equipment you need, just focus on performing!\n", 65);
        dramaticPause(3);
        textReader("\nBUSINESSMAN's RESTAURANT", 65);
        sleep(2);
        textReader("\n*Several hours have passed, and now you and ", 65);
        printf(birdName);
        textReader(" will be performing your first ever performance in a few moments*", 65);
        sleep(1);
        textReader("\n*The Bussinessman appears from the area with the tables and motions for you to begin.*", 65);
        sleep(1);
        textReader("\n*You approach the main area, and it's at this moment you realize that the restuarant is fully packed\n", 65);
        dramaticPause(3);
        textReader("with angry, hungry, fully-armed soldiers*", 65);
        sleep(1);
        textReader("\n*Nonetheless, you begin your performance*", 65);
        sleep(1);
        textReader("\nWell, looks like we have a full house, ", 65);
        printf(birdName);
        textReader("!", 65);
        printf("\n", birdName);
        textReader(" squawks in agreement", 65);
        sleep(1);
        textReader("\n*You begin with a recount of your adventure, a wonderous story of the sea, and hope*", 65);
        sleep(1);
        textReader("\n*The difficult audience listens with faces struck with awe, for soldiers of the I.C.W.N. were forbidden to ever sail*", 65);
        sleep(1);
        printf("\n*", birdName);
        textReader(" gives frequent interjections of emotion as well, adding to the story-telling*", 65);
        sleep(1);
        textReader("\n*You continue with the stories of your home, which nobody save ", 65);
        printf(birdName);
        textReader(" had ever heard before*", 65);
        sleep(1);
        textReader("\n*At this point, the whole restaurant is close to bursting with people, who had arrived to eat", 65);
        textReader("\nand stayed to hear the stories*\n", 65);
        sleep(1);
        dramaticPause(3);
        textReader("and now, I must retire, but I will be back!", 65);
        sleep(2);
        textReader("\n*The crowd applauds with fervent enthusiasm*", 65);
        sleep(1);
        textReader("\nThank you, thank you! *You stand and take a bow*", 65);
        dramaticPause(3);
        textReader("\n*The Businessman stayed true to his word and paid you very handsomely, for he was now very, very wealthy*", 65);
        sleep(1);
        textReader("\n*You even have enough money to return to your own land, but you stay in the I.C.W.N.*", 65);
        sleep(1);
        textReader("\n*Your stories had finally convinced the I.C.W.N to become reacquanted with the rest of the world*", 65);
        textReader("\n*And you are now, ", 65);
        printf(yourName);
        textReader(" the Master Storyteller*", 65);
        textReader("\n\nENDING: MASTER STORYTELLER\n\n", 100);
    }
    
//-------------------End-5-------------------
    
    else if (decision2 == 'D') {
        textReader("Very well, but be warned, you won't be welcomed as warmly as I welcomed you.", 65);
        sleep(1);
        textReader("\n*You continue to wander around the town curiously, and you run into a troop of soldiers*", 65);
        sleep(1);
        textReader("\nHEY! CRAZY KID! GET OVER HERE!!!\n", 50);
        printf("*%s", birdName);
        textReader(" squawks in fear, but does not fly away*", 65);
        sleep(1);
        textReader("\n*You attempt to run, but the soldiers were already on the alert for a strange foreigner*", 65);
        sleep(1);
        textReader("\n*After a brief scuffle, the soldiers capture both you and your bird*", 65);
        textReader("\nWHAT'S YOUR NAME!!!", 50);
        textReader("\n*Spittle flies from the shouting soldier's name, and momentarily, you can't respond*", 65);
        sleep(2);
        textReader("\n*The soldier shakes you violently*", 65);
        sleep(1);
        textReader("\n*You manage to croak out ", 65);
        printf(yourName, "*");
        textReader("\nI CAN'T HEAR YOU!!!", 65);
        textReader("\n*You manage to say your name again*", 65);
        sleep(1);
        textReader("\nI ALREADY KNEW THAT!!!", 65);
        textReader("\nHAR HAR HAR\nHAR HAR HAR\nHAR HAR HAR", 65);
        sleep(1);
        textReader("\nYOU'RE COMING WITH US!!!", 65);
        sleep(1);
        textReader("\n*The soldiers drag you to a prison, most likely the only one on the island*", 65);
        sleep(1);
        textReader("*You ask what crime you committed and they simply continue their terrible laugh*", 65);
        sleep(1);
        textReader("\n*The soldiers throw you into a cell, laughing as they lock the cell and take your bird and throw it violently into a smaller cell*\n", 65);
        textReader("\nGOOD-BYE FOREIGNER, NOBODY WILL EVER COME BACK! HAR HAR HAR!", 65);
        dramaticPause(3);
        textReader("\n*Nobody ever comes back to the prison, and you waste away there for the rest of your life*", 65);
        textReader("\n*And you are now, ", 65);
        printf(yourName);
        textReader(" the Forgotten Prisoner*", 65);
        textReader("\n\nENDING: FORGOTTEN PRISONER\n\n", 100);
    }
    
//-------------------End-6-------------------
    
    else if (decision2 == 'A') {
        textReader("*You flex in front of the Businessman, he assumes that you're showing your vast capabilites*", 65);
        sleep(1);
        textReader("\n*You approach closer to the Businessman, and he finally stops smiling, and replaces it with a frown*\n", 65);
        dramaticPause(3);
        textReader("\nNow, ", 65);
        printf(yourName);
        textReader(" I'd appreciate it if you could-", 100);
        textReader("\n*You let fly your first punch and the Businessman hollers with pain*", 65);
        printf("\n*%s ", birdName);
        textReader("caws raucously to cover the Businessman's exlcamations of pain*", 65);
        sleep(1);
        textReader("\n*Eventually, the Businessman falls silent. While he may be rich, he was in no shape to fight*", 65);
        sleep(1);
        textReader("\n*You steal anything valuable the Businessman had\nand stuff the unconscious body of the Businessman up a nearby tree*", 65);
        sleep(1);
        textReader("\n*You head deeper into the town to find a tailor\nand convince the tailor (with force of course) to create a suit just like the Businessman had*", 65);
        sleep(1);
        textReader("\n*You then make it clear to the tailor what would happen if they reported anything to anybody*", 65);
        textReader("\n*You continue around the town and find every piece of property that had belonged to the Businessman", 65);
        dramaticPause(3);
        textReader("\nand steal all the money that had been collected so far from each of the ventures*", 65);
        sleep(1);
        textReader("\n*You then head to the local militia's headquarters (in the I.C.W.N. the militia acts as both the law enforcement and army)\nand offer one group of soldiers a large sum of money for serving under your rule*", 65);
        sleep(1);
        textReader("\n*Later, you head back to the milita's headquarters, when a different group of soldiers is on shift\nyou offer this different group of soldiers money as well if they serve under you*\n", 65);
        dramaticPause(3);
        textReader("*Both groups accept the offer, and the first thing you do is set both groups against each other*", 65);
        sleep(2);
        textReader("\n*You have successfully divided the I.C.W.N. and you now live in shadow, and extreme wealth*", 65);
        textReader("\n*Nobody can speak against you, for you have two forces under your command to execute your every command*", 65);
        textReader("\n*You have created a fleet of ships, and now the I.C.W.N. has one of the greatest pirate fleets in the world*", 65);
        textReader("\n*The two groups under your service can never claim any money from you\nfor they have never completely finished the first task which was assigned to them\nwhich was to defeat the other group*", 65);
        textReader("\n*Everybody fears you*", 65);
        textReader("\n*And you are now, ", 65);
        printf(yourName);
        textReader(" the Pirating Crimeboss*", 65);
        textReader("\n\nENDING: PIRATING CRIMEBOSS\n\n", 100);
    }
    
//-------------------End-7-------------------
    
    if (decision4 == 'C') {
        textReader("*You continue your quest for the goods in the cargo hold of the shipwreck*", 65);
        textReader("\n*Your greed fuels your desire and your courage, and you enter the shipwreck*", 65);
        sleep(1);
        textReader("\n*You hardly care about green light or strange sounds, when pyhsical gold can be found just around the corner*\n", 65);
        printf(birdName);
        textReader(" continues to cry and circle overhead, trying to alert you of danger*", 65);
        textReader("\n*You continue to not listen to your bird*", 65);
        textReader("\n*You pocket several bags of goods, including a bag full of valuable metals, which you are sure you can sell for a small fortune, even in the I.C.W.N.*", 65);
        sleep(1);
        textReader("\n*All the while, from your bird's perspective, the shipwreck seems to glow, a dark, eerie green, and fog starts to roll in from the sea, adding to the environment*", 65);
        sleep(1);
        textReader("\n*You eventually leave the shipwreck, laden with enough to make a small empire on the I.C.W.N. and surprisingly, there seems to be no harm done upon you*", 65);
        textReader("\n*You don't quite remember how many valuables were present on the ship*", 65);
        textReader("\n*It seems like there are a lot more than there should be, but you're not complaining*", 65);
        textReader("\n*Once you leave the cove containing the shipwreck you and your bird take a look at your catch*", 65);
        textReader("\nWell, let's open one!\n", 100);
        dramaticPause(3);
        textReader("Choking smoke emerges from the bag you open, and it continues to pour out, blotting out the sky, stifling any attempt at breathing that you take", 65);
        sleep(1);
        textReader("\n*You have achieved your", 65);
            printf(yourName);
            textReader(" the Greedy Death*", 65);
            textReader("\n\nENDING: GREEDY DEATH\n\n", 100);  
    }

//-------------------End-8-------------------

    else if (decision4 == 'I') {
        textReader("*You turn away from the shipwreck and stand still, listening closely for the next strange sound*", 65);
        textReader("\n*It seems to emanate from the center of the shipwreck*", 65);
        sleep(1);
        textReader("\n*But you are still fairly scared to enter the shipwreck*\n", 65);
        printf("*%s", birdName);
        textReader(" still flies in the air, scared to return to you*", 65);
        textReader("\n*Yet, the shipwreck seems to be calling to you, it holds the answer to this mystery, and plus, you're very tired, and seeing as it's night, it's probably best to rest in shelter*", 65);
        textReader("\nYESSS ", 65);
        printf(upper(yourName));
        textReader(" JOINNNN USS!", 65);
        textReader("\n*The voice no longer seems malicious, and it even sounds welcoming, comforting even*", 65);
        textReader("\n*You enter the shipwreck and sleep*\n", 100);
        dramaticPause(3);
        textReader("*When you wake, you feel extremely light, moving takes no effort whatsoever*", 65);
        textReader("\n*You can go wherever you want, but the shipwreck is so welcoming, it's your home now, and you stay here, to guard whoever wants to next steal its treasures*", 65);
        textReader("\n*You are now ", 65);
            printf(yourName);
            textReader(" the Shipwreck Wraith*", 65);
            textReader("\n\nENDING: SHIPWRECK WRAITH\n\n", 100);
    }
    
//-------------------End-9-------------------
    
    else if (decision4 == 'R') {
        textReader("*You turn away instantly and run as hard as your legs can*", 65);
        textReader("\n*yet you never seem to escape from the green light, which grows more and more luminous by the minute*", 65);
        textReader("\n*You hear ", 65);
        printf(birdName);
        textReader(" squawk from the sky, urging to run faster*", 65);
        sleep(1);
        textReader("\n*No matter how hard you pump your legs, you make no progress, and the green light grows to unbearable brightness, and it finally speaks again*\n", 65);
        dramaticPause(3);
        printf(upper(yourName));
        textReader(" WHHYYY DOOO YOUUU TRRYYYYYYY TO RUUUUUUUNN", 65);
        textReader("\nYOUUU, THEEEE CAPPTAAIN OF OURRR SHIPPP, SHOOUUUULD JOINNN US.", 65);
        textReader("\nUS, WHO DIED FORRR YOU.", 65);
        textReader("\n*Suddenly, you recognize the voice who talks to you, it was your one of your oar drivers!*", 65);
        sleep(1);
        textReader("\nJoin you where?", 65);
        textReader("\nAMONGST THE DEAD OF COURSEEEE.", 65);
        dramaticPause(3);
        textReader("\nYOOUUU REALLLY DON'T HAVE MUUCCH OF A CHOOICCEE, JUST GO INTO THE SHIPWRECK", 65);
        textReader("\nAND YOU WILL BE ONE OF US.", 65);
        sleep(1);
        ran2 = randint(1, 5);
        if (ran2 == 5) {
            textReader("\n*You cannot accept the request of the ghost, so you run, and run, and run. You keep running away, and eventually you come into the Town*", 65);
            textReader("\n*There you hide in fright until morning*", 65);
            sleep(1);
            textReader("\n*For years, later on, you recount to anyone who passes by your frightful story*", 65);
            textReader("\n*Nobody really cares, and you are now ", 65);
            printf(yourName);
            textReader(" the Crazy Elder*", 65);
            textReader("\n\nENDING: CRAZY ELDER\n\n", 100);
        }
        else {
            textReader("\n*You walk slowly towards the shipwreck, and you finally enter*", 65);
            textReader("\n*You sleep there*\n", 65);
            dramaticPause(5);
            textReader("\n*The next morning, your feet no longer touch the ground, and you can fly, just like your bird*", 65);
            sleep(1);
            textReader("\n*Somehow, you finally feel at peace, time no longer has a definition for you*", 65);
            textReader("\n*You are now ", 65);
            printf(yourName);
            textReader(" the Shipwreck Wraith*", 65);
            textReader("\n\nENDING: SHIPWRECK WRAITH\n\n", 100);
        }
    }
    return 0;
}
