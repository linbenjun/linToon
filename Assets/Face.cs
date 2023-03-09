using UnityEngine;

[ExecuteAlways]
public class Face : MonoBehaviour
{
    private Transform headTransform;
    private Transform headForward;
    private Transform headRight;
    private Material[] faceMaterials;

    private void Start()
    {
        headTransform = transform.Find("tou").GetComponent<Transform>();
        headForward = transform.Find("0.0.1").GetComponent<Transform>();
        headRight = transform.Find("1.0.0").GetComponent<Transform>();
        SkinnedMeshRenderer render = transform.Find("face1").GetComponent<SkinnedMeshRenderer>();
        Material[] allMaterials = render.materials;
        faceMaterials = new Material[1];
        faceMaterials[0] = allMaterials[1];
        Update();
    }

    private void Update()
    {
        Vector3 forwardVector = headForward.position - headTransform.position;
        Vector3 rightVector = headRight.position - headTransform.position;
        forwardVector = forwardVector.normalized;
        rightVector = rightVector.normalized;
        Vector4 forwardVector4 = new Vector4(forwardVector.x, forwardVector.y, forwardVector.z);
        Vector4 rightVector4 = new Vector4(rightVector.x, rightVector.y, rightVector.z);
        for (int i = 0; i < faceMaterials.Length; i++)
        {
            Material material = faceMaterials[i];
            material.SetVector("_HeadForward", forwardVector4);
            material.SetVector("_HeadRight", rightVector4);
        }
    }

}