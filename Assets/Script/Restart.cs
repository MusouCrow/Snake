using UnityEngine;
using UnityEngine.UI;

namespace Game {
    public class Restart : MonoBehaviour {
        private Button button;

        protected void Awake() {
            this.button = this.GetComponent<Button>();
            this.button.onClick.AddListener(this.OnClick);
        }

        private void OnClick() {
            var uis = GameObject.FindGameObjectsWithTag("UI");

            for (int i = 0; i < uis.Length; i++) {
                uis[i].GetComponent<Gradients>().enabled = true;
            }

            System.IS_OVER = false;

            var bodys = GameObject.FindGameObjectsWithTag("Body");
            var foods = GameObject.FindGameObjectsWithTag("Food");
            var newBody = GameObject.FindGameObjectWithTag("NewBody");
            var head = GameObject.FindGameObjectWithTag("Head");

            for (int i = 0; i < bodys.Length; i++) {
                Destroy(bodys[i]);
            }

            for (int i = 0; i < foods.Length; i++) {
                Destroy(foods[i]);
            }

            Destroy(newBody);
            head.GetComponent<Head>().Reset();
            Factory.FoodCount = 0;
        }
    }
}
