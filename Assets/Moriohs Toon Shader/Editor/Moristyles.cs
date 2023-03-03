#region
using UnityEditor;
using UnityEngine;
#endregion

// help link https://docs.unity3d.com/ScriptReference/EditorStyles.html
// ---DISCLAIMER--- THIS CODE IS BASED OFF OF "SYNQARK"'s ARKTOON-SHADERS AND "XIEXE"'s UNITY-SHADERS. FOR MORE INFORMATION PLEASE REFER TO THE ORIGINAL BASE WRITER "https://github.com/synqark", "https://github.com/synqark/Arktoon-Shaders" or "https://github.com/Xiexe", "https://github.com/Xiexe/Xiexes-Unity-Shaders"

[InitializeOnLoad]
public class Moristyles : MonoBehaviour
{
    public static string ver = "<color=#ffffffff> ✿ {  </color>Mori's Toon v" + "<color=#ff0000ff> 1.6.6</color> | <color=#ff0000ff>Rev.2</color>" + "<color=#000000ff>  } ✿ </color>";

    public static GUIStyle _LineStyle;
    public static GUIStyle LineStyle
    {
        get
        {
            if (_LineStyle == null)
            {
                _LineStyle = new GUIStyle();
                _LineStyle.normal.background = EditorGUIUtility.whiteTexture;
                _LineStyle.stretchWidth = true;
            }

            return _LineStyle;
        }
    }

    private static Rect DrawShuriken(string title, Vector2 contentOffset, int HeaderHeight)
    {
        var style = new GUIStyle("ShurikenModuleTitle");
        style.font = new GUIStyle(EditorStyles.boldLabel).font;
        style.border = new RectOffset(15, 7, 4, 4);
        style.fixedHeight = HeaderHeight;
        style.contentOffset = contentOffset;
        var rect = GUILayoutUtility.GetRect(16f, HeaderHeight, style);
        GUI.Box(rect, title, style);
        return rect;
    }

    private static Rect DrawShurikenCenteredTitle(string title, Vector2 contentOffset, int HeaderHeight)
    {
        var style = new GUIStyle("ShurikenModuleTitle");
        style.font = new GUIStyle(EditorStyles.boldLabel).font;
        style.border = new RectOffset(15, 7, 4, 4);
        style.fixedHeight = HeaderHeight;
        style.contentOffset = contentOffset;
        style.alignment = TextAnchor.MiddleCenter;
        var rect = GUILayoutUtility.GetRect(16f, HeaderHeight, style);

        GUI.Box(rect, title, style);
        return rect;
    }
    public static bool ShurikenFoldout(string title, bool display)
    {
        var rect = DrawShuriken(title, new Vector2(20f, -2f), 22);
        var e = Event.current;
        var toggleRect = new Rect(rect.x + 4f, rect.y + 2f, 13f, 13f);
        if (e.type == EventType.Repaint) EditorStyles.foldout.Draw(toggleRect, false, false, display, false);
        if (e.type == EventType.MouseDown && rect.Contains(e.mousePosition))
        {
            display = !display;
            e.Use();
        }
        return display;
    }


    //parting line text
    public static bool ShurikenCenterTextFoldout(string title, bool display)
    {
        var rect = DrawShuriken(title, new Vector2(31f, -2f), 22);
        var e = Event.current;
        var toggleRect = new Rect(rect.x + 15f, rect.y + 2f, 13f, 13f);
        if (e.type == EventType.Repaint) EditorStyles.foldout.Draw(toggleRect, false, false, display, false);
        if (e.type == EventType.MouseDown && rect.Contains(e.mousePosition))
        {
            display = !display;
            e.Use();
        }
        return display;
    }
    // end HelperBox


    /*BGImage Test
    public static class TSConstants
    {
        private static Texture2D logo;
        private static string localShaderFolder;
        private static string localShaderAssetsFolder;

        public static string LocalShaderFolder
        {
            get
            {
                if (localShaderFolder == null)
                    InitializeFolderReferences();
                return localShaderFolder;
            }

            set
            {
                localShaderFolder = value;
            }
        }
        public static string LocalShaderAssetsFolder
        {
            get
            {
                if (localShaderAssetsFolder == null)
                    InitializeFolderReferences();
                return localShaderAssetsFolder;
            }

            set
            {
                localShaderAssetsFolder = value;
            }
        }

        public static Texture2D Logo
        {
            get
            {
                if (logo == null)
                    InitializeFolderReferences();
                return logo;
            }

            set
            {
                logo = value;
            }
        }
        public static void InitializeFolderReferences()
        {
            string assetsPath = "";
            string[] logopath = AssetDatabase.FindAssets("BGImage t:Texture2D", null);
            if (logopath.Length > 0)
            {
                string[] pieces = AssetDatabase.GUIDToAssetPath(logopath[0]).Split('/');
                ArrayUtility.RemoveAt(ref pieces, pieces.Length - 1);
                ArrayUtility.RemoveAt(ref pieces, pieces.Length - 1);
                ArrayUtility.RemoveAt(ref pieces, pieces.Length - 1);
                assetsPath = string.Join("/", pieces);
            }

            string path = Application.dataPath + assetsPath.Substring(assetsPath.IndexOf("/"));

            localShaderFolder = path;
            localShaderAssetsFolder = assetsPath;
            logo = AssetDatabase.LoadAssetAtPath<Texture2D>(assetsPath + "/Editor/Resources/BGImage.png");
        }
    }



    static public GUIStyle _TexStyle;
    static public GUIStyle TexStyle
    {
        get
        {
            if (_TexStyle == null)
            {
                _TexStyle = new GUIStyle();
                _TexStyle.normal.background = TSConstants.Logo;
                _TexStyle.stretchWidth = true;

            }

            return _TexStyle;
        }
    }

    static public void DrawBGImage(float height = 512)
    {
        Rect position = GUILayoutUtility.GetRect(0f, 0f, height, height, TexStyle);
        if (Event.current.type == EventType.Repaint)
        {
            Texture2D icon = TSConstants.Logo;
            TexStyle.Draw(position, icon, false, false, false);
        }
    }



    End BGImage Test */

    //parting lines
    public static void PartingLine()
    {
        GUILayout.Space(5);
        GUILine(new Color(1f, 1f, 1f), 1.5f);
        GUILayout.Space(5);
    }

    public static void GUILine(Color color, float height = 0f)
    {
        Rect position = GUILayoutUtility.GetRect(0f, float.MaxValue, height, height, LineStyle);

        if (Event.current.type == EventType.Repaint)
        {
            Color orgColor = GUI.color;
            GUI.color = orgColor * color;
            LineStyle.Draw(position, false, false, false, false);
            GUI.color = orgColor;
        }
    }
    // end of parting line

    //exrta buttons
    public static void gitlabversioncheckbutton(int Width, int Height)
    {
        if (GUILayout.Button("Check Version", GUILayout.Width(Width), GUILayout.Height(Height))) Application.OpenURL("https://gitlab.com/xMorioh/moriohs-toon-shader/tags");
    }

    public static void gitupdatebutton(int Width, int Height)
    {
        if (GUILayout.Button("Beta Update", GUILayout.Width(Width), GUILayout.Height(Height))) Application.OpenURL("https://gitlab.com/xMorioh/moriohs-toon-shader/-/archive/master/moriohs-toon-shader-master.zip");
    }

    public static void manualbutton(int Width, int Height)
    {
        GUILayout.BeginHorizontal();
        GUILayout.FlexibleSpace();
        if (GUILayout.Button("Show Manual", GUILayout.Width(Width), GUILayout.Height(Height))) Application.OpenURL("https://gitlab.com/xMorioh/moriohs-toon-shader/-/wikis/Mori's-Toon-Shader-Manual");
        GUILayout.FlexibleSpace();
        GUILayout.EndHorizontal();
    }

    public static void ShurikenHeaderCentered(string title)
    {
        DrawShurikenCenteredTitle(title, new Vector2(0f, -2f), 22);
    }

    public static void DrawButtons()
    {
        PartingLine();
        EditorGUILayout.BeginHorizontal();
        GUILayout.FlexibleSpace();
        gitlabversioncheckbutton(100, 30);
        gitupdatebutton(100, 30);
        GUILayout.FlexibleSpace();
        EditorGUILayout.EndHorizontal();
        manualbutton(100, 30);
    }
    //end of parting line text

    // Simple auto-laid out information box, uses materialproperty display name as text | Ported from Kaj's Editor
    public class HelpBoxDrawer : MaterialPropertyDrawer
    {
        private readonly MessageType type;

        public HelpBoxDrawer()
        {
            type = MessageType.Info;
        }

        public HelpBoxDrawer(float f)
        {
            type = (MessageType)(int)f;
        }

        public override void OnGUI(Rect position, MaterialProperty prop, string label, MaterialEditor editor)
        {
            EditorGUILayout.HelpBox(label, type);
        }
        public override float GetPropertyHeight(MaterialProperty prop, string label, MaterialEditor editor)
        {
            return-4f; // Remove the extra drawer padding + helpbox extra padding
        }
    }
}
