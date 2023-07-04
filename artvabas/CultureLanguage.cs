
namespace artvabas
{
    public static class CultureLanguage

    {
        private static string currentLanguage = string.Empty;
        public static bool HaveDeviceCultureLanguage { get; set; } = false;

        public static string CurrentLanguage
        {
            get => currentLanguage;

            set
            {
                currentLanguage = value;
                if (currentLanguage != "en" && currentLanguage != "nl")
                    currentLanguage = "en";
            }
        }
        public static string GetCultureLanguageDataFile()
        {
            return "~/App_Data/" + currentLanguage + ".xml";
        }
    }
}