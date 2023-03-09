using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class xuanzhuan : MonoBehaviour
{
    public float speed;
    public Vector3 direction = Vector3.zero;
    void Update()
    {
        transform.Rotate(speed * direction * Time.deltaTime,Space.World);
    }
}
