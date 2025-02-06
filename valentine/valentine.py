def ask_valentine():
    print("Sweetheart!!! may itatanong lng ako na masinsinan")
    input("Press Enter to continue...")
    
    print("\nMahal na Mahal kita, Sweetie!")
    input("Press Enter to continue...")
    
    print("\nKaya gusto ko sana tanungin...")
    input("Press Enter to continue...")
    
    response = input("\nIkaw ba ang magiging Valentine ko? (oo/hindi): ").strip().lower()
    
    if response == "oo":
        print("\nYay! Owye ayieeee ❤️")
    elif response == "hindi":
        print("\nAww, awit lods 💔")
    else:
        print("\nHende ko naintindihan, pero sana nag oo ka 😊")

if __name__ == "__main__":
    ask_valentine()