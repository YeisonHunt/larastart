<template>
  <div class="hole" style="min-height:80vh;">
    <div class="container-fluid">
      
  

<div class="row">
        <div class="col-lg-1 col-sm-6">
         
          <h3 class="kt-portlet__head-title">Contacts</h3>
          <p> &nbsp; 112 Total</p>
        </div>

        <div class="col-lg-7 col-sm-12 form-row">
          <div class="col-sm-12 col-lg-6 mt-2" >
            <input
              type="text"
              class="form-control letter"
              placeholder="Search..."
            
              id="generalSearch"
            >
            
          </div>

          <div class="col-lg-3 col-sm-6 mt-2">
              <sui-dropdown
            text="Order by"
            placeholder
            selection
            :options="options"
            v-model="current"
            class="form-control letter"
            
          />
          </div>
        
          <div class="col-lg-3 col-sm-6 mt-2">
             <sui-dropdown
            text="Filter by Type"
            icon="filter"
            floating
            labeled
            button
            class="icon form-control letter"
           
            v-model="selectedValue"
            :menu-header="menuHeader"
            :search-in-menu="searchInMenu"
            :options="options2"
          />
          </div>
         
        </div>

        <div class="col-lg-4 col-sm-6 mt-2">

          <div class="ml-4">
             <div class="kt-portlet__head-wrapper align-middle" >
            <a href="#" class="btn btn-clean btn-icon-sm">
              <i class="la la-refresh"></i>
            </a>

          
            <sui-dropdown class="icon" icon="ellipsis horizontal" button>
              <sui-dropdown-menu>
                <sui-dropdown-item>New</sui-dropdown-item>
                <sui-dropdown-item>Save As</sui-dropdown-item>
                <sui-dropdown-item>Edit</sui-dropdown-item>
              </sui-dropdown-menu>
            </sui-dropdown>
       
            <div class="dropdown dropdown-inline">
              <button type="button" class="btn btn-brand btn-icon-sm letter">
                <i class="flaticon2-plus"></i> Add New
              </button>
            </div>
          </div>
          </div>
         

        </div>
      </div>

      <br>
      

      <div class="row">
        <div class="col-md-12 col-sm-12 col-lg-12">
          <div class="kt-portlet kt-portlet--mobile">
            <div class="kt-portlet__body kt-portlet__body--fit">
              <!--begin: Datatable -->
              <div
                class="kt-datatable kt-datatable--default kt-datatable--brand kt-datatable--error kt-datatable--loaded"
                id="ajax_data"
              >
              <table class="table table-hover table-responsive-sm">
														<thead class="thead-light">
															<tr>
																<th>#</th>
																<th>Photo</th>
                                <th>Full Name</th>
                                <th>Email</th>
                                <th>Status</th>
                                <th>Type</th>
                                <th>Birthday</th>
                                <th>Last Sign In</th>
                                <th>Company</th>
                                <th>Actions</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<th scope="row">1</th>
                                <td><img alt="image" src="https://image.tmdb.org/t/p/w220_and_h330_face/bOlYWhVuOiU6azC4Bw6zlXZ5QTC.jpg" class="rounded-circle" width="50" height="50" data-toggle="tooltip" title="" data-original-title="Hariono Yusup"></td>
																<td ><div class="mt-3">
                                  Yeison Caicedo
                                  </div> </td>
                                
																<td>yecaicedo@unicauca.edu.co</td>
																<td>Active</td>
                                <td>Friends</td>
                                <td>25 April</td>
                                <td>10:00 pm Yesterday</td>
                                <td>Axon Group</td>
                                <td></td>
															</tr>
														
													
														</tbody>
													</table>
                
              </div>

              

              <!--end: Datatable -->
            </div>
          </div>

          <nav aria-label="...">
                <ul class="pagination">
                  <li class="page-item disabled">
                    <span class="page-link">Previous</span>
                  </li>
                  <li class="page-item"><a class="page-link" href="#">1</a></li>
                  <li class="page-item active">
                    <span class="page-link">
                      2
                      <span class="sr-only">(current)</span>
                    </span>
                  </li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#">Next</a>
                  </li>
                </ul>
              </nav>
        </div>

        
      </div>


     
    </div>
  </div>
</template>


<style>
@import url('https://fonts.googleapis.com/css?family=Open+Sans&display=swap');

body{

  background-color:#fafbfc !important; 
  font-family: 'Open Sans','sans-serif' !important;
}

h3, .letter {
    font-family: 'Open Sans','sans-serif' !important;
}

</style>

<script>


//import 'semantic-ui-css/semantic.min.css';
//import 'semantic-ui-css/semantic.js';


export default {
  name: "SelectionExample",
  data() {
    return {
      current: null,
      options: [
        {
          text: "Male",
          value: 1
        },
        {
          text: "Female",
          value: 2
        }
      ],

      menuHeader: {
        icon: "",
        content: "Header"
      },
      searchInMenu: {
        icon: "search",
        iconPosition: "left"
      },
      selectedValue: null,
      options2: [
        {
          key: "Important",
          text: "Important",
          value: "Important",
          label: { color: "red", empty: true, circular: true }
        },
        {
          key: "Announcement",
          text: "Announcement",
          value: "Announcement",
          label: { color: "blue", empty: true, circular: true }
        },
        {
          key: "Cannot Fix",
          text: "Cannot Fix",
          value: "Cannot Fix",
          label: { color: "black", empty: true, circular: true }
        },
        {
          key: "News",
          text: "News",
          value: "News",
          label: { color: "purple", empty: true, circular: true }
        },
        {
          key: "Enhancement",
          text: "Enhancement",
          value: "Enhancement",
          label: { color: "orange", empty: true, circular: true }
        },
        {
          key: "Change Declined",
          text: "Change Declined",
          value: "Change Declined",
          label: { empty: true, circular: true }
        },
        {
          key: "Off Topic",
          text: "Off Topic",
          value: "Off Topic",
          label: { color: "yellow", empty: true, circular: true }
        },
        {
          key: "Interesting",
          text: "Interesting",
          value: "Interesting",
          label: { color: "pink", empty: true, circular: true }
        },
        {
          key: "Discussion",
          text: "Discussion",
          value: "Discussion",
          label: { color: "green", empty: true, circular: true }
        }
      ]
    };
  },

  mounted() {
    jQuery(document).ready(function() {

      
				$('#logMenu').click(function(){


					//$('#logMenuDrop').toggleClass('show');

					});

					$('#app').click(function(){


						//$('#logMenuDrop').removeClass('show');

					});


    });
  }
};
</script>


