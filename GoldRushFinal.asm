#Brittney Scheven
#Gold rush final project

.intel_syntax noprefix
.data

#Welcome
Top:
    .ascii " __| |____________________________________________| |__\n(__   ____________________________________________   __)\n   | |                                            | |\n   | |                                            | |\n\0"

Middle:
    .ascii "   | |\0"

GoldRush:
    .ascii "              G O L D  R U S H          \0"      

Bottom:
    .ascii "    | |\n __| |____________________________________________| |__\n(__   ____________________________________________   __)\n   | |                                            | |\n\0"
  
Space:
    .ascii "\n\0"


#Rules
Rules:
    .ascii "Rules:\n\0"

Rule1:
    .ascii "1. You have 25 weeks (6 months) to make as much money as you can.\n\0"

Rule2:
   .ascii "2. Each claim earns you a random amount of gold.\n   The more gold you earn, the less remains.\n\0"

Rule3:
    .ascii "3. You can change claims before they run out. There are 20 claims (1-20).\n   It takes a week relocate.\n\0"

Rule4:
    .ascii "4. Food and supplies cost 10-20 dollars.\n\0"

Rule5:
    .ascii "5. You start out with $100 and 100 energy points.\n\0"

Rule6:
    .ascii "6. Panning for gold uses up your energy.\n\0"

Rule7:
    .ascii "7. You can't pan for gold if you have no energy.\n\0"

Rule8:
    .ascii "8. You can replenish energy in town or go gambling.\n\0"


EndingText:
    .ascii "You ended the 25 weeks with $\0"

#Weekly text
Week:
    .quad 1

WeekText:
    .ascii "\nWEEK #\0"

ClaimText:
    .ascii "Working on claim #\0"


CostsText:
    .ascii "The cost for food and supplies is $\0"

Costs:
    .quad 0

Period:
    .ascii ".\n\0"

PanningText:
    .ascii "Panning for gold yields $\0"

TotalMoney:
    .ascii "You have $\0"

Sunday:
    .ascii "It's Sunday! Do you want to (1) keep working (2) go to a new claim or (3) go into town?\n\0"

NewClaim:
    .ascii "What claim do you want to move to? (1-20)\n\0"

Time:
    .ascii "It took a week to move to a new claim.\n\0"


#Claim array for 20 river spaces
Claim:
    .space 160, 0 			#initialize 20 8 byte  slots with 0 value
    
ClaimInput:				#user selection of river
    .quad 0


#Funds
Funds:
    .quad 100


#Energy points

RandomGold:				#random gold amount
    .quad 0

Energy:
    .quad 100

EnergyLevel:
    .ascii "Energy level: \0"

NoEnergy:
    .ascii "You are out of energy\n\0"

HeadToTown:
    .ascii "You can regain energy by sleeping at a hotel or eating food in town.\n\0"

GainEnergy:
    .ascii "You have gained \0"

#Week 1
Arrived:   
    .ascii "You have just arrived in Coloma.\nWhat section of the river do you want to claim? (1-20)\n\0"

Mountains:
    .ascii "        _    .  ,   .           .\n    *  / \\_ *  / \\_      _  *        *   /\\'__        *\n      /    \\  /    \\,   ((        .    _/  /  \\  *'.\n .   /\\/\\  /\\/ :' __ \\_  `          _^/  ^/    `--.\n    /    \\/  \\  _/  \\-'\\      *    /.' ^_   \\_   .'\\  *\n  /\\  .-   `. \\/     \\ /==~=-=~=-=-;.  _/ \\ -. `_/   \\\n /  `-.__ ^   / .-'.--\ =-=~_=-=~=^/  _ `--./ .-'  `-\n/        `.  / /       `.~-^=-=~=^=.-'      '-._ `._\n\0"


#Town
TownText:
    .ascii "You head into town...\n\0"

TownChoice:
    .ascii "Would you like to (1) gamble (2) go to the saloon (3) check in at a hotel?\n\0"

#Gambling
GamblingRules:
    .ascii "\nRules for gambling: \n\0"
 
GamblingRule1:
    .ascii "1. Enter in an amount to gamble (no more than your current funds).\n\0"

GamblingRule2:
    .ascii "2. If you win, you will be awarded the amount you entered added to your funds.\n\0"

GamblingRule3:
    .ascii "3. If you lose, you will have the amount taken away from your funds.\n\0"

GamblingRule4:
   .ascii "4. To stop gambling, enter in -1\n\0"

WonGambling:
    .ascii "You won $\0"

EnterAmount:
    .ascii "Enter an amount to gamble: \0"

LostGambling:
    .ascii "You lost $\0"

RetryBet:
    .ascii "You cannot enter an amount greater than your current funds.\n\0"

#Saloon	
SaloonWelcome:
   .ascii "Welcome to the saloon!\n\0"

SaloonChoice:
   .ascii "Would you like to (1) buy some food($10) or (2) buy some whiskey($15)\n\0"

FoodChoice:
   .ascii "You bought some food to eat...your energy has increased by \0"

WhiskeyPrice:
   .quad 15

FoodPrice:
   .quad 10

MaxEnergy:
   .ascii "You are already well rested.\n\0"

WhiskeyChoice:
   .ascii "You drank some whiskey...\n\0"

Sober:
   .ascii "You feel your energy start to come back.\n\0"

Drunk:
   .ascii "Uh, oh... You had a little too much to drink.\n\0"

EnergyLoss:
   .ascii "You lost \0 "

EnergyLoss2:
   .ascii " energy.\n\0"

#Hotel
HotelChoice:
   .ascii "You chose to check in at a hotel. A room will replenish some energy.\n\0"

HotelFee:
   .ascii "It costs $100 to book a room.\n\0"

HotelPrice:
   .quad 100

HotelDecide:
   .ascii "Do you (1) stay at the hotel or (2) leave.\n\0"

#Town ascii art
Town:
   .ascii "~         ~~          __\n       _T      .,,.    ~--~ ^^\n ^^   // \\                    ~\n      ][O]    ^^      ,-~ ~\n   /''-I_I         _II____\n__/_  /   \\ ______/ ''   /'\\_,__\n  | II--'''' \\,--:--..,_/,.-{ },\n; '/__\\,.--';|   |[] .-.| O{ _ }\n:' |  | []  -|   ''--:.;[,.'\\,/\n'  |[]|,.--'' '',   ''-,.    |\n  ..    ..-''    ;       ''. '\n\0"

Saloon:
    .ascii " ___                 ___\n       _____/___\\_____        __|___|__\n       \"\"\"\"(\"-_-\")\"\"\"\"         ( o_o )      ~\n         /\\\\_)=o~/             _\\~-~/_   _ _~\n        / /\\\\\\///\\      ~     / \\/|\\/ \\/\\(|_|\n         \__|\\\\//\\ \\   ~      / |     |\\_/\n __________|//\\\\/_/___~______\\_\\_____|_____\n           _______   |_|)      _______\n           \\_____/             \\_____/\n\0"

Bed:
   .ascii    "   ||\n   ||                   ||\n||/||___                ||\n|| /`   )____________||_/|\n||/___ //_/_/_/_/_/_/||/ |\n||(___)/_/_/_/_/_/_/_||  |\n||     |_|_|_|_|_|_|_|| /|\n||     | | | | | | | ||/||\n||~~~~~~~~~~~~~~~~~~~||\n||                   ||\n\0" 

#start of text section
.text
.global _start
_start:

    #Title of game
    lea rdx, Top		
    call PrintCString
    lea rdx, Middle
    call PrintCString
    mov rdx, 3
    call SetForeColor		#gold rush = yellow
    lea rdx, GoldRush
    call PrintCString
    mov rdx, 7			#white
    call SetForeColor
    lea rdx, Bottom
    call PrintCString
    lea rdx, Space
    call PrintCString

    #Rules
    mov rdx, 2
    call SetForeColor
    lea rdx, Rules
    call PrintCString
    mov rdx, 7
    call SetForeColor
    lea rdx, Rule1
    call PrintCString
    lea rdx, Rule2
    call PrintCString
    lea rdx, Rule3
    call PrintCString
    lea rdx, Rule4
    call PrintCString    
    lea rdx, Rule5
    call PrintCString
    lea rdx, Rule6
    call PrintCString
    lea rdx, Rule7
    call PrintCString
    lea rdx, Rule8
    call PrintCString

    #randomize claims
    mov rbx, 0		 		#while loop until 20
    FillClaims:
        cmp rbx, 19
        jg Week1	
        
        #True block
        mov rdx, 1001   		#0-1000 random value
        call Random
        mov rdi, rbx
        mov [Claim + rdi * 8], rdx	#random gold value into claim
        add rbx, 1
        jmp FillClaims			#while loop

    Week1:
        lea rdx, Space
        call PrintCString
        lea rdx, Mountains
        call PrintCString
        lea rdx, Space
        call PrintCString
        lea rdx, Arrived
        call PrintCString
        call ScanInt
	mov ClaimInput, rdx		#save users claim into memory
        lea rdx, Space
        call PrintCString
    
    WeeklyLoop:
  	#compare
        mov rdx, Week
        cmp rdx, 25
        jg End				#Jump out of loop  if week > 25
       
        #display Weekly text
        lea rdx, WeekText
        call PrintCString
        mov rdx, Week
        call PrintInt			#print week #
        lea rdx, Space
        call PrintCString
        lea rdx, Space
        call PrintCString
        lea rdx, ClaimText
        call PrintCString
        mov rdx, ClaimInput		#print user's claim choice
        call PrintInt
        lea rdx, Space
        call PrintCString
        lea rdx, Space
        call PrintCString

        #get random number for costs
        mov rdx, 11
        call Random			#get random # between 0-10
        add rdx, 10			#add 10 to get value between 10-20 for food and supplies
        mov Costs, rdx			#save costs into memory     
        lea rdx, CostsText
        call PrintCString
        mov rdx, Costs
        call PrintInt			#print costs for user
        mov rdx, Funds
        sub rdx, Costs			#Subtract costs from funds
        mov Funds, rdx			#save
        lea rdx, Space
        call PrintCString
        
        #check to make sure user has enough energy
        CheckEnergy:
            mov rdx, Energy
            cmp rdx, 0
            jg PanForGold		#if player has enough energy
           
            mov rdx, 1
            call ChangeFontColor       
            lea rdx, NoEnergy
            call PrintCString
            call ChangeFontToDefault
            lea rdx, HeadToTown
            call PrintCString
            lea rdx, Space
            call PrintCString
            call IntoTown
            mov rdx, Week
            add rdx, 1
            mov rdx, Week
            jmp CheckEnergy        

       #get the gold amount in claim
       PanForGold:
        lea rdx, PanningText
        call PrintCString
        mov rdi, ClaimInput		#search claim array for gold amount
        sub rdi, 1			#subtract 1 for zero indexing
        mov rdx, [Claim + rdi*8]	#find index
        call Random			#grab random value from $0 to full amount of gold
        mov RandomGold, rdx		#save random gold value
        call PrintInt
        mov rdx, [Claim + rdi*8]
        sub rdx, RandomGold
        mov [Claim + rdi*8], rdx	#save reduced claim amount in array
        mov rdx, Funds
        add rdx, RandomGold		#add gold to funds
        mov Funds, rdx
        lea rdx, Space
        call PrintCString
        lea rdx, TotalMoney
        call PrintCString
        call FundColor  
        lea rdx, Space
        call PrintCString 
        call LoseEnergy			#used up energy
        lea rdx, Space
        call PrintCString              
        mov rdx, Week
        cmp rdx, 25
        je End
        #its sunday
	lea rdx, Sunday
        call PrintCString
        call ScanInt			#scan for user's choice, 1=keep working, 2= new claim, 3 = town
        push rdx			#save register        
        cmp rdx, 2
        jg IntoTown			#if user selection is > 2 go into town
        cmp rdx, 1
        jg ClaimNew			#if user selection > 1 but < 3 get new claim
        mov rdx, Week
        add rdx, 1			#new week 
        mov Week, rdx
        jmp WeeklyLoop			#if user entered 1, jump to next week same claim         
       
        #user chose to move claims
        ClaimNew:
            mov rdx, Week
            add rdx, 2			#takes a week to move
	    mov Week, rdx
	    lea rdx, NewClaim
      	    call PrintCString
	    call ScanInt		#new claim
	    mov ClaimInput, rdx		#save new claim
	    lea rdx, Time
 	    call PrintCString
            jmp WeeklyLoop			#start loop with new week and claim
 	
        #user chose to go into town
	IntoTown:
            mov rdx, Week
            add rdx, 1				#start of new week
            mov Week, rdx
	    lea rdx, TownText
	    call PrintCString
            mov rdx, 3				#yellow
	    call ChangeFontColor
            lea rdx, Town
            call PrintCString
            call ChangeFontToDefault       
            lea rdx, Space
            call PrintCString
            lea rdx, TownChoice			#1 = gamble, 2 = saloon, 3 = hotel 
            call PrintCString
            call ScanInt
            cmp rdx, 2
            jg UserSelectedHotel
            cmp rdx, 1
            jg UserSelectedSaloon
            
            #gamble
            mov rdx, 2
            call ChangeFontColor
            lea rdx, GamblingRules		#gambling rules
            call PrintCString
            call ChangeFontToDefault
            lea rdx, GamblingRule1
            call PrintCString
            lea rdx, GamblingRule2
            call PrintCString
            lea rdx, GamblingRule3
            call PrintCString
            lea rdx, GamblingRule4
            call PrintCString
            lea rdx, Space
            call PrintCString

            #gambling loop
            ContinueGambling:
                lea rdx, Space
                call PrintCString
                lea rdx, EnterAmount		#get user's amount to bet
                call PrintCString
                call ScanInt
                cmp rdx, -1			#exit
                jle WeeklyLoop
                cmp rdx, Funds
                jg Retry			#bet cant be more than funds
                mov rax, rdx			#save users bet
                mov rdx, 2			#0 = lose, 1 = win
                call Random
                cmp rdx, 0
                je Lose
                #won
                mov rdx, 2
                call ChangeFontColor
                lea rdx, WonGambling
                call PrintCString
                mov rdx, rax
                call PrintInt
                mov rax, Funds			#add to  funds
                add rax, rdx
                mov Funds, rax
                call ChangeFontToDefault
                lea rdx, Space
                call PrintCString
                lea rdx, TotalMoney
                call PrintCString
                call FundColor
                lea rdx, Space
                call PrintCString
                jmp ContinueGambling
               
                Lose:
                    mov rdx, 1
                    call ChangeFontColor
                    lea rdx, LostGambling
                    call PrintCString
                    mov rdx, rax
                    call PrintInt
                    mov rax, Funds
                    sub rax, rdx
                    mov Funds, rax
                    call ChangeFontToDefault
                    lea rdx, Space
                    call PrintCString
                    lea rdx, TotalMoney
                    call PrintCString
                    call FundColor
                    lea rdx, Space
                    call PrintCString
                    jmp ContinueGambling                          

                Retry:
                    mov rdx, 5
                    call ChangeFontColor
                    lea rdx, RetryBet
                    call PrintCString
                    call ChangeFontToDefault
                    jmp ContinueGambling
      
           UserSelectedHotel:
               mov rdx, Energy
               cmp rdx, 100
               jge FullEnergy 
               lea rdx, HotelChoice
               call PrintCString
               lea rdx, HotelFee
               call PrintCString
               lea rdx, HotelDecide
               call PrintCString
               call ScanInt			#1 = stay, 2= leave
               cmp rdx, 1 
               je Stay
               call IntoTown			#if user decides to leave head back to town               
               Stay:
                   mov rdx, Funds
                   sub rdx, HotelPrice
                   mov Funds, rdx
                   mov rdx, 4
                   call ChangeFontColor
                   lea rdx, Bed
                   call PrintCString
                   call ChangeFontToDefault
                   lea rdx, GainEnergy
                   call PrintCString
                   mov rdx, 100
                   sub rdx, Energy		#rdx = missing energy points
                   call Random			
                   add rdx, 1			#get value from 1-full max
                   call PrintInt
                   mov rax, Energy
                   add rax, rdx			#add energy
                   mov Energy, rax
                   lea rdx, EnergyLoss2
                   call PrintCString
                   lea rdx, EnergyLevel
                   call PrintCString
                   mov rdx, Energy
                   call PrintInt
                   lea rdx, Space
                   call PrintCString         
                   jmp WeeklyLoop

               #If player already has max energy
               FullEnergy:
                   lea rdx, MaxEnergy
                   call PrintCString
                   call IntoTown
                   jmp WeeklyLoop
           
           UserSelectedSaloon:
               lea rdx, Space
               call PrintCString
               mov rdx, Energy
               cmp rdx, 100
               jge FullEnergy
               mov rdx, 1
               call ChangeFontColor
               lea rdx, Saloon
               call PrintCString
               call ChangeFontToDefault
               lea rdx, Space
               call PrintCString
               lea rdx, SaloonWelcome
               call PrintCString
               lea rdx, SaloonChoice
               call PrintCString		#1 = food, 2 = whiskey
               call ScanInt
               cmp rdx, 1
               jg BuyWhiskey
               #food choice
               mov rdx, Funds
               sub rdx, FoodPrice
               mov Funds, rdx
               lea rdx, FoodChoice
               call PrintCString
               mov rdx, 100
               sub rdx, Energy
               mov rax, rdx
               mov rbx, 2
               cqo
               idiv rbx				#rax = half of remaining energy
               mov rdx, rax
               call Random			#random number between 0-half of energy
               add rdx, 1			#add 1
               call PrintInt
               mov rax, Energy
               add rax, rdx                     #add energy gained
               mov Energy, rax
               lea rdx, EnergyLoss2
               call PrintCString
               lea rdx, Space
               call PrintCString
               lea rdx, EnergyLevel
               call PrintCString
               mov rdx, Energy
               call PrintInt
               lea rdx, Space
               call PrintCString
               jmp WeeklyLoop 

           BuyWhiskey:
               mov rdx, Funds
               sub rdx, WhiskeyPrice
               mov Funds, rdx
               lea rdx, WhiskeyChoice
               call PrintCString
               mov rdx, 2
               call Random			#rdx = 0 or 1
               cmp rdx, 0
               jg GotDrunk
               lea rdx, Sober
               call PrintCString
               lea rdx, GainEnergy
               call PrintCString
               mov rdx, 100
               sub rdx, Energy
               mov rax, rdx
               mov rbx, 2
               cqo
               idiv rbx
               mov rdx, rax
               call Random
               add rdx, 1
               call PrintInt
               mov rax, Energy
               add rax, rdx
               mov Energy, rax
               lea rdx, EnergyLoss2
               call PrintCString
               lea rdx, Space
               call PrintCString
               lea rdx, EnergyLevel
               call PrintCString
               mov rdx, Energy
               call PrintInt
               lea rdx, Space
               call PrintCString
               jmp WeeklyLoop

           #if the user randomly got drunk
           GotDrunk:
               mov rdx, 1
               call ChangeFontColor
	       lea rdx, Drunk
               call PrintCString
               call ChangeFontToDefault
               lea rdx, EnergyLoss
               call PrintCString
               mov rdx, Energy
               mov rax, rdx
               mov rbx, 2
               cqo
               idiv rbx
               mov rdx, rax
               call Random
               add rdx, 1
               call PrintInt
               mov rax, Energy
               sub rax, rdx			#subtract energy lost
               mov Energy, rax
               lea rdx, EnergyLoss2
               call PrintCString
               lea rdx, Space
               call PrintCString
               lea rdx, EnergyLevel
               call PrintCString
               mov rdx, Energy
               call PrintInt
               lea rdx, Space
               call PrintCString
               jmp WeeklyLoop
               
           pop rdx
           ret          

    FundColor:					#gives the funds a color depending on what value it is
        mov rdx, Funds
        cmp rdx, 100
        jg Green				#profit
        jl Red 

        Green:
            mov rdx, 2
            call SetForeColor
            mov rdx, Funds
            call PrintInt
            jmp setWhite
        Red:
            mov rdx, 1
            call SetForeColor
            mov rdx, Funds
            call PrintInt
        
        setWhite: 
        mov rdx, 7				#back to white
        call SetForeColor
        ret
    
     EnergyColor:
         mov rdx, Energy
         cmp rdx, 0
         jle R
         jg G
        
         R:
             mov rdx, 1
             call SetForeColor
             mov rdx, Energy
             call PrintInt
             call ChangeFontToDefault

              ret
       
         G:
             mov rdx, 2
             call SetForeColor
             mov rdx, Energy
             call PrintInt
             call ChangeFontToDefault
             ret

     LoseEnergy:
         lea rdx, EnergyLoss
         call PrintCString
         mov rdx, 15
         call Random				#random num from 0-14
         add rdx, 1
         call PrintInt
         mov rax, Energy
         sub rax, rdx
         mov Energy, rax
         lea rdx, EnergyLoss2
         call PrintCString
         lea rdx, EnergyLevel
         call PrintCString
         call EnergyColor
         ret
     
     #changes font color			#rdx = color 
     ChangeFontColor:
         call SetForeColor
         
         ret

     ChangeFontToDefault:				#default = white
         mov rdx, 7
         call SetForeColor
         
         ret
         
     End:
         lea rdx, EndingText			#ended the week with:
         call PrintCString
         call FundColor
         call EndProgram 


