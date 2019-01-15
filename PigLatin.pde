public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String word) {
  for(int i = 0; i < word.length(); i++) {
    if(word.substring(i, i + 1).equals("a") || word.substring(i, i + 1).equals("e") || word.substring(i, i + 1).equals("i") || word.substring(i, i + 1).equals("o") || word.substring(i, i + 1).equals("u")) {
      return i;
    }
  }
  return -1;
}

public String pigLatin(String word) {
	if(findFirstVowel(word) == -1)
	{
		return word + "ay";
	} else if(word.substring(0, 1).equals("a") || word.substring(0, 1).equals("e") || word.substring(0, 1).equals("i") || word.substring(0, 1).equals("o") || word.substring(0, 1).equals("u")) {
		return word + "way";
	} else if(word.substring(0,2).equals("qu")) {
		return word.substring(2) + "qu" + "ay";
	} else if(findFirstVowel(word) > 0) {
		return word.substring(findFirstVowel(word)) + word.substring(0, findFirstVowel(word)) + "ay";
	}
	return "ERROR!";
}
