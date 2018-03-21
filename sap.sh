echo "enter your choice\n1.copy\n2.move\n3.compare\n"
read ch



case $ch in
	1)echo "\nenter file name to copy\n"
		read f1
		echo "\nenter file name\n"
		read f2
		if [ -f $f1]
		then 
			cp $f1 $f2
		else
			echo "$f1 does not exist"
		fi
		;;
	2)echo "\nenter file name to move\n"
		                read f1
				             echo "\nenter destination\n"
					                     read f2
							     if [ -f $f1 ]
				                             then
								     if [ -d $f2]
						                   then
									   mv $f1 $f2
								   fi
							   else
								   echo " $f1 does not exist\n"
			fi
			                 ;;
	        3) echo "\nenter file name to compare\n"
			read f1
			echo "\nenter file to be compared\n"
			read f2
			if [ -f $f1 ]
			then 
				if [ -f $f2 ]
				then 
					if [ comm $f1 $f2 ]
					then echo " files are same\n"
					else
						echo " files are not same"
					fi
			         else
					 echo "$f2 does not exist\n"
			          fi
			  else
				  
				       echo " $f1 does not exist\n"
			       fi
			       ;;
			           *) echo " invalid choice\n"

					                         esac
			
