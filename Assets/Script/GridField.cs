using UnityEngine;

namespace Game {
    public class GridField : MonoBehaviour {
        public const int ASPECT_W = 15;
        public const int ASPECT_H = 9;

        private float width;
        private float height;

        protected void Start() {
            this.width = Camera.main.orthographicSize / 9 * 16;
            this.height = Camera.main.orthographicSize;
        }

        protected void OnDrawGizmos() {
            for (int i = -ASPECT_W; i <= ASPECT_W; i++) {
                Gizmos.DrawLine(new Vector3(i * GridUtility.SIZE, -this.height, 0), new Vector3(i * GridUtility.SIZE, this.height, 0));
            }
            
            for (int i = -ASPECT_H; i <= ASPECT_H; i++) {
                Gizmos.DrawLine(new Vector3(-this.width, i * GridUtility.SIZE, 0), new Vector3(this.width, i * GridUtility.SIZE, 0));
            }
        }
    }
}