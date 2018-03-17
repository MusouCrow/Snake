using System.Collections.Generic;
using UnityEngine;

namespace Game {
    public class Food : MonoBehaviour {
        private GridPosition gridPosition;

        protected void Awake() {
            this.gridPosition = this.GetComponent<GridPosition>();

            int w = (int)Mathf.Lerp(GridField.ASPECT_W - 1, -GridField.ASPECT_W + 1, Random.value);
            int h = (int)Mathf.Lerp(GridField.ASPECT_H - 1, -GridField.ASPECT_H + 1, Random.value);
            this.gridPosition.Position = new Vector2Int(w, h);
        }

        protected void OnTriggerEnter2D(Collider2D collider) {
            Factory.FoodCount--;
            Destroy(this.gameObject);
        }
    }
}