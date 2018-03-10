using System;
using UnityEngine;

namespace Game {
    public class Body : MonoBehaviour {
        private static GameObject PREFAB;

        private static GameObject NewBody(GameObject pre) {
            var obj = GameObject.Instantiate(PREFAB, pre.transform.position, Quaternion.identity);
            obj.transform.position = pre.transform.position;
            var a = obj.GetComponent<Body>();
            var b = pre.GetComponent<Body>();

            a.prebody = b;
            b.afterbody = a;

            return obj;
        }

        [NonSerialized]
        public Body prebody;
        [NonSerialized]
        public Body afterbody;
        public Vector2 laterPosition;
        private bool willNew;
        
        protected void Awake() {
            PREFAB = PREFAB == null ? Resources.Load("Prefab/Body") as GameObject : PREFAB;
           
            System.MoveTickEvent += this.MoveTick;
        }

        protected void Update() {
            if (this.afterbody == null && Input.GetKeyDown(KeyCode.Space)) {
                this.willNew = true;
            }
        }

        private void MoveTick() {
            if (this.willNew) {
                Body.NewBody(this.gameObject);
                this.willNew = false;
            }

            if (this.prebody == null) {
                return;
            }

            this.laterPosition = this.transform.position;
            this.transform.position = this.prebody.laterPosition;
        }
    }
}