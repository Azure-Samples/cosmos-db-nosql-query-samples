using System.IO;
using System.Reflection;

public static class FolderSource
{
    public static IEnumerable<object[]> TestData
    {
        get
        {
            List<string> directories = new List<string>();

            string? toolDirectory = Path.GetDirectoryName(Assembly.GetExecutingAssembly()?.Location);
            if (toolDirectory is not null)
            {
                string? projectDirectory = Path.Combine(toolDirectory, "scripts");
                
                if (projectDirectory is not null)
                {
                    foreach(string directory in Directory.GetDirectories(projectDirectory))
                    {
                        string? output = Path.GetRelativePath(projectDirectory, directory) switch
                        {
                            ".devcontainer" or ".git" or ".vscode" => null,
                            "test" or "validate" => null,
                            _ => directory,
                        };
                        if (output is not null)
                        {                            
                            var name = new DirectoryInfo(output).Name;
                            directories.Add(name);
                        }
                    }
                }
            }
            
            return directories.Select(d => new object[] { d });
        }
    }
}