using UnityEngine;

[ExecuteAlways]
public class HeadTowards : MonoBehaviour
{
    private Material FaceMaterial;

    void Start()
    {
        FaceMaterial = this.GetComponent<MeshRenderer>().material;
    }

    private void SetHeadDirection()
    {
        if (this.FaceMaterial !=null)
        {
            this.FaceMaterial.SetVector("_HeadForward",this.transform.forward);
            this.FaceMaterial.SetVector("_HeadRight",this.transform.right);
        }
    }
    
    private void Update()
    {
        this.SetHeadDirection();
    }

    void OnDestroy()
    {
        if(FaceMaterial != null)
        {
            Object.Destroy(FaceMaterial);
        }
    }
}    