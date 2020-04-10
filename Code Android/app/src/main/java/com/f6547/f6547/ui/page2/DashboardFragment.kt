package com.f6547.f6547.ui.page2

import android.annotation.SuppressLint
import android.graphics.Color
import android.os.Bundle
import android.util.TypedValue
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.*
import androidx.fragment.app.Fragment
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.Observer
import androidx.lifecycle.ViewModelProviders
import com.android.volley.Request
import com.android.volley.Response
import com.android.volley.toolbox.StringRequest
import com.android.volley.toolbox.Volley
import com.f6547.f6547.DataStorage
import com.f6547.f6547.R
import kotlinx.android.synthetic.main.fragment_dashboard.*
import org.json.JSONArray
import org.json.JSONObject

class DashboardFragment : Fragment() {


   var liveData : MutableLiveData<JSONObject> = MutableLiveData<JSONObject>()


    private lateinit var dashboardViewModel: DashboardViewModel



    override fun onCreateView(
            inflater: LayoutInflater,
            container: ViewGroup?,
            savedInstanceState: Bundle?
    ): View? {
        dashboardViewModel =
                ViewModelProviders.of(this).get(DashboardViewModel::class.java)
        val root = inflater.inflate(R.layout.fragment_dashboard, container, false)

        return root
    }


    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        getQuery();

       liveData.observe(this, object: Observer<JSONObject> {
            override fun onChanged(json: JSONObject?) {
                var t= json
                msgscreen()
                update_card(json)
//                liveData.removeObserver(this)
            }
        })
    }


 @SuppressLint("ResourceAsColor")
 fun update_card(json:JSONObject?){
     allert5436.visibility = View.INVISIBLE

    var t=json
     val jsonArray: JSONArray = json!!.getJSONArray("item")
     for (i in 0 until jsonArray.length()) {
         var jsonInner: JSONObject = jsonArray.getJSONObject(i)
         var id = jsonInner.get("id")
         var name = jsonInner.get("name")
         var pages = jsonInner.get("pages")
         var author = jsonInner.get("author")

         if (id.toString().compareTo("0")!= 0) {

             val t_id: TextView = TextView(this.context)
             val t_name: TextView = TextView(this.context)
             val t_pages: TextView = TextView(this.context)
             val t_author: TextView = TextView(this.context)
             t_id.text = "Номер книги: " + id.toString()
             t_name.text = "Название книги: " + name.toString()
             t_pages.text = "Страниц: " + pages.toString()
             t_author.text = "Автор: " + author.toString()

             var colortext = "#FF0A0A0B"

             t_id.setTextColor(Color.parseColor(colortext))
             t_name.setTextColor(Color.parseColor(colortext))
             t_pages.setTextColor(Color.parseColor(colortext))
             t_author.setTextColor(Color.parseColor(colortext))

             t_id.setTextSize(TypedValue.COMPLEX_UNIT_DIP, 20F);
             t_name.setTextSize(TypedValue.COMPLEX_UNIT_DIP, 16F);
             t_pages.setTextSize(TypedValue.COMPLEX_UNIT_DIP, 16F);
             t_author.setTextSize(TypedValue.COMPLEX_UNIT_DIP, 16F);

             val Lin: LinearLayout = LinearLayout(this.context)
             Lin.setOrientation(LinearLayout.VERTICAL);
             Lin.setBackgroundResource(R.drawable.shape0548)

             var param: RelativeLayout.LayoutParams =
                 RelativeLayout.LayoutParams(RelativeLayout.LayoutParams.MATCH_PARENT, 260);
             param.setMargins(0, 40, 0, 0)
             Lin.addView(t_id)
             Lin.addView(t_name)
             Lin.addView(t_pages)
             Lin.addView(t_author)
             Lin.layoutParams = param
             sc_card.addView(Lin)
         }
     }

 }


    
    fun msgscreen(){


        val toast = Toast.makeText(
            this.context,
            R.string.msg_update,
            Toast.LENGTH_SHORT
        )
        toast.show()
    }


    fun getQuery() {

        val queue = Volley.newRequestQueue(this.context)
        val url: String =  DataStorage().url_json();
        var resp:String ="";
        val stringReq = StringRequest(
            Request.Method.GET, url,
            Response.Listener<String> { response ->
                resp = response.toString();
                var strResp = response.toString()
                val jsonObj: JSONObject = JSONObject(strResp)
                liveData.postValue(jsonObj)
            },
            Response.ErrorListener {
                resp = ""
            })
        queue.add(stringReq)
    }


}
