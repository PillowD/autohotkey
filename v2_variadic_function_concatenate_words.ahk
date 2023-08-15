#Requires AutoHotkey v2.0
#SingleInstance Force
;   When defining a function, write an asterisk after the final parameter to mark the function as variadic, allowing it to receive a variable number of parameters
;   The operation has to make sense for the parameters.  .= the append assignment, works for strings.  Math operation would create an error

concat_any_number_of_words(word*) {
    for each_item in word
        sentence .= each_item
    return sentence

}
MsgBox concat_any_number_of_words("Hello ", "there. ",),,"T2"
MsgBox concat_any_number_of_words("Hello ", "there, ", "General ","Grievous. "),,"T2"
;concat_any_number_of_words

Esc::ExitApp
ExitApp
