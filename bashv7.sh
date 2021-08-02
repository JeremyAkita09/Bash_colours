
#name
EnterName(){
  read -p "What name do you want to display?" inputname
  echo $inputname
  
  if [ "$inputname" = "" ];then 
    echo "You did not enter your name! Bye bye!!"
  exit
  else 
    echo hello $inputname,Welcome to HTML Generator !
    enterColour
  fi
}

enterColour(){
  read -p "In what colour (red, green or blue)?" Colourname
  #echo $Colourname
  echo 
  if [ $Colourname == 'red' ]; then 
    echo $Colourname
    inputFont
  elif [ $Colourname == 'blue' ]; then
    echo $Colourname
    inputFont
  elif [ $Colourname == 'green' ]; then
    echo $Colourname
    inputFont
  else 
    echo "you did not enter your colour" 
    exit
  fi
}



inputFont(){
  read -p "What font size do you want to use?" inputsize
  echo $inputsize
  echo 

  if [ "$inputsize" = "" ]; then 
    echo "You did not enter your size"
    exit
   else 
    echo $inputname,$Colourname,$inputsize
    checkFile
  fi
}



checkFile(){
  #options ='check if file exist"'
  #echo "check if file exist"
  FILE='hello.html'
  if [ -f $FILE ]; then
    echo "The file '$FILE' exists." 
    askOverwrite
  else
    echo "The file '$FILE' in not found."
  fi
}


askOverwrite(){
  read -p "Would you like yo overwrite it (yes \ no)" yon
  if [ $yon = "yes" ]; then
     writeFile
  else
    exitProgram
  fi
}


writeFile(){
  echo '<body>' > hello.html
  echo '<body>' >> hello.html
  echo '<p <span style='font-size:$inputsize pt'>Hello'  >> hello.html
  echo '<span style='color:$Colourname'>' $inputname '</span></p>'  >> hello.html
  echo '</body>' >> hello.html
  echo '</body>' >> hello.html

  echo "the file has been written"
}

exitProgram(){
  echo "the program will exit now"
  exit
}

#https://stackoverflow.com/questions/40082346/how-to-check-if-a-file-exists-in-a-shell-script/40082454?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa
#!/bin/bash
# Make a HTML  Script Bash version 

echo # Welcome Make a HTML

#$1
#$2
#$3

#read Paraname
#read Paracolour
#read Parasize



#$Paraname=$1
#$Paracolour=$2
#$Parasize=$3

#echo '<body>' > makentm.html
#echo '<body>' >> makentm.html
#echo '<p <span style='font-size:$Parasize pt'>Hello</span>'  >> makentm.html
#echo '<span style='color:$Paracolour'>' $Paraname '</span></p>'  >> makentm.html
#echo '</body>' >> makentm.html
#echo '</body>' >> makentm.html



#echo "got paraments"
#exit

echo "#Select a task:"
echo "============="
echo -
echo "1) Option 1 :name"
echo "2) Option 2 :Colour"
echo "3) Option 3 :Size"
echo "-"


#name colour fontsize

if [ $# = 3 ]; then
  inputname=$1
  Colourname=$2
  inputsize=$3
  checkFile
elif [ $# = 0 ]; then
  EnterName
else
  echo "Wrong number of parameters"
  exitProgram
fi
