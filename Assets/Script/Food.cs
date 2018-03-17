using System.Collections.Generic;
using UnityEngine;

namespace Game {
    public class Food : MonoBehaviour {
        private GridPosition gridPosition;

        protected void Awake() {
            this.gridPosition = this.GetComponent<GridPosition>();

            int w = (int)Mathf.Lerp(GridField.ASPECT_W, -GridField.ASPECT_W, Random.value);
            int h = (int)Mathf.Lerp(GridField.ASPECT_H, -GridField.ASPECT_H, Random.value);
            this.gridPosition.Position = new Vector2Int(w, h);
        }

        protected void OnTriggerEnter2D(Collider2D collider) {
            Factory.FOOD_COUNT--;
            Destroy(this.gameObject);
        }
    }
}