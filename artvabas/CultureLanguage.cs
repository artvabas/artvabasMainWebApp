/*
 * Class CultureLanguage
 * 
 * This class store the users device language or user selected language
 * in its static variable. So that this setting is available through
 * the whole web application.
 * 
 * Properties:
 *      HaveDeviceCultureLanguage:  When web application is staring up for first time,
 *                                  then the users device language is stored by this class.
 *                                  Once this value is stored, there is no need to store it again.
 *                                  This property can be use to check this.
 *                                  
 *      CurrentLanguage:            For setting and getting the current selected language.
 *      
 * Methods:
 *      GetCultureLanguageFile():   For getting the full path where the language file is stored.
 *                                  Used by XML reader.
 *                                  
 * Developed by: AvB, aliases Uther, UPendragon
 * Date        : 07-20123
 * Version     : 1.0
 * 
 * (c) 2023, artvabas
 */

namespace artvabas
{
    public static class CultureLanguage
    {

        // temp, only used for construction, remove after construction is done.
        private static bool haveseen = false;
        public static bool HaveSeenPoPup
        {
            get { return haveseen; }
            set { haveseen = value; }
        }
        // end temp

        /* Class variables*/
        // string for storing the selected two letter ISO language name;
        private static string currentLanguage = string.Empty;

        /* Class properties */
        // Flag for checking if users device language has already been stored.
        public static bool HaveDeviceCultureLanguage { get; set; } = false;
        // For setting the selected language or for getting the stored language.
        public static string CurrentLanguage
        {
            get => currentLanguage;

            set
            {
                currentLanguage = value;
                // If language is not a supported language, then select 'en' (English) as language.
                if (currentLanguage != "en" && currentLanguage != "nl")
                    currentLanguage = "en";
            }
        }

        /* Class Methods */
        // Method for getting the full path where the language file that need to be used is stored.
        public static string GetCultureLanguageDataFile()
        {
            return "~/App_Data/" + currentLanguage + ".xml";
        }
    }
}