#define print
//__author__ = Agustin Del Pino
//Funcion de print para que se escriba en el Log
var logFile = file_text_open_append(global.logDir);
if(is_array(argument0)){
    var listOfString = argument0;
    var listOfStringLen = array_length_1d(listOfString);
    
    for(i=0;i<=listOfStringLen-1;i+=1){    
        file_text_write_string(logFile,listOfString[i]+' ');
        file_text_writeln(logFile);
    }
}else if!(is_array(argument0)){
    file_text_write_string(logFile,argument0);    
    file_text_writeln(logFile);
}else{
    show_error("Print function expects 1 parameter, but 0 was given",true);
}
file_text_close(logFile);

