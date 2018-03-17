using System;
using UnityEngine;

namespace Game {
    public class Body : MonoBehaviour {
        private static GameObject PREFAB;
        
        public static int Count {
            get;
            private set;
        }

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
            System.MoveTickEvent += this.WhenNewBornTick;
            Head.TAIL = this;
            Body.Count++;
        }

        protected void OnDestroy() {
            System.MoveTickEvent -= this.MoveTick;
            System.MoveTickEvent -= this.WhenNewBornTick;
            Body.Count--;
        }

        public void Bore() {
            if (this.afterbody == null) {
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
    
        private void WhenNewBornTick() {
            if (this.tag == "NewBody") {
                this.tag = "Body";
            }

            System.MoveTickEvent -= this.WhenNewBornTick;
        }
    }
}