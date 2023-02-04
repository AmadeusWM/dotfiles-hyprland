import subprocess, os;

pathStoredSearches = "~/.config/hypr/scripts/extra/storage/dict_searches.txt";

def runDictionary():
    inp = getWofiWithPreviousSearches();
    print(inp);
    if (inp != ""): 
        showMeaning(inp);
    saveLocally(inp);

def getWofiWithPreviousSearches():
    prevSearches = listPrevSearches();
    wofiCmd = "wofi --show dmenu";
    return subprocess.getoutput(parseEchoCommand(prevSearches) + " | " + wofiCmd);

def listPrevSearches():
    cmd = "cat ~/.config/hypr/scripts/extra/storage/dict_searches.txt";
    return subprocess.getoutput(cmd);

def showMeaning(inp):
    cmdDict = "dict " + inp;
    cmdWofi = cmdDict + " | wofi --show dmenu --width 1000 --heigh 500";
    subprocess.getoutput(cmdWofi);

def saveLocally(inp):
    if (os.path.isfile(pathStoredSearches)):
        cmd = "touch {path}/dict_searches.txt".format(pathStoredSearches);
        subprocess.getoutput(cmd);
    if (inp != ""):
        cmd = parseEchoCommand(inp) + " | cat - "+ pathStoredSearches + " > temp && mv temp " + pathStoredSearches;
        subprocess.getoutput(cmd);

def parseEchoCommand(inp):
    return 'echo "' + inp + '"';

runDictionary();