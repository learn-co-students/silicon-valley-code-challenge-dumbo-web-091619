require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


#venture_capatalists

vc1=VentureCapitalist.new("joe",500_000_000)
vc2=VentureCapitalist.new("ashley",600_000_000)
vc3=VentureCapitalist.new("larry",700_000_000)
vc4=VentureCapitalist.new("dave",800_000_000)
vc5=VentureCapitalist.new("mary",900_000_000)
vc6=VentureCapitalist.new("sue",1_000_000_000)
vc7=VentureCapitalist.new("bill",1_500_000_000)
vc8=VentureCapitalist.new("ralph",2_000_000_000)
vc9=VentureCapitalist.new("jane",2_500_000_000)
vc10=VentureCapitalist.new("sasha",3_000_000_000)

#start_ups

strt_up1=Startup.new("Stink Grenade Studios",vc1,"web engineering company")
strt_up2=Startup.new("Roboco",vc1,"bio engineering company")
strt_up3=Startup.new("Tesla",vc2,"smart car company")
strt_up4=Startup.new("Samsung",vc2,"smart phone company")
strt_up5=Startup.new("Infinity Ward",vc3,"video game company")
strt_up6=Startup.new("Google",vc3,"data science company")
strt_up7=Startup.new("Revel",vc4,"electric scooter company")
strt_up8=Startup.new("Bitcoin bros",vc4,"crypto company")
strt_up9=Startup.new("Gortex",vc5,"smart clothing company")
strt_up10=Startup.new("Ableton",vc5,"musical engineering company")
strt_up11=Startup.new("Echod graphics",vc6,"graphic design company")
strt_up12=Startup.new("Black Hawk",vc6,"electric skateboard company")
strt_up13=Startup.new("Cyber safe",vc7,"cyber security company")
strt_up14=Startup.new("SolarTech",vc7,"solar tech company")
strt_up15=Startup.new("VR GO",vc8,"virtual tech company")
strt_up16=Startup.new("SmartHome",vc8,"smart home company")
strt_up17=Startup.new("RIDE",vc9,"ride sharing company")
strt_up18=Startup.new("SpareCouch",vc9,"home sharing company")
strt_up19=Startup.new("CleanRite",vc10,"house keeping company")
strt_up20=Startup.new("amazon",vc10,"internet retail company")

#funding_round

fr1=FundingRound.new(strt_up1,vc1,"Series A",1000000.0)
fr2=FundingRound.new(strt_up1,vc1,"Series B",2000000.0)
fr3=FundingRound.new(strt_up1,vc1,"Series C",3000000.0)
fr4=FundingRound.new(strt_up2,vc2,"Series A",4000000.0)
fr5=FundingRound.new(strt_up2,vc2,"Series B",5000000.0)
fr6=FundingRound.new(strt_up2,vc2,"Series C",6000000.0)
fr7=FundingRound.new(strt_up3,vc3,"Series A",7000000.0)
fr8=FundingRound.new(strt_up3,vc3,"Series B",8000000.0)
fr9=FundingRound.new(strt_up3,vc3,"Series C",9000000.0)
fr10=FundingRound.new(strt_up4,vc4,"Series A",10_000000.0)
fr11=FundingRound.new(strt_up4,vc4,"Series B",11_000000.0)
fr12=FundingRound.new(strt_up4,vc4,"Series C",12_000000.0)
fr13=FundingRound.new(strt_up5,vc5,"Series A",13_000000.0)
fr14=FundingRound.new(strt_up5,vc5,"Series B",14_000000.0)
fr15=FundingRound.new(strt_up5,vc5,"Series C",15_000000.0)
fr16=FundingRound.new(strt_up6,vc6,"Series A",16_000000.0)
fr17=FundingRound.new(strt_up6,vc6,"Series B",17_000000.0)
fr18=FundingRound.new(strt_up6,vc6,"Series C",18_000000.0)
fr19=FundingRound.new(strt_up7,vc7,"Series A",19_000000.0)
fr20=FundingRound.new(strt_up7,vc7,"Series B",20_000000.0)
fr21=FundingRound.new(strt_up7,vc7,"Series C",21_000000.0)
fr22=FundingRound.new(strt_up8,vc8,"Series A",22_000000.0)
fr23=FundingRound.new(strt_up8,vc8,"Series B",23_000000.0)
fr24=FundingRound.new(strt_up8,vc8,"Series C",24_000000.0)
fr25=FundingRound.new(strt_up9,vc9,"Series A",25_000000.0)
fr26=FundingRound.new(strt_up9,vc9,"Series B",26_000000.0)
fr27=FundingRound.new(strt_up9,vc9,"Series C",27_000000.0)
fr28=FundingRound.new(strt_up10,vc10,"Series A",28_000000.0)
fr29=FundingRound.new(strt_up10,vc10,"Series B",29_000000.0)
fr30=FundingRound.new(strt_up10,vc10,"Series C",30_000000.0)









binding.pry
0 #leave this here to ensure binding.pry isn't the last line