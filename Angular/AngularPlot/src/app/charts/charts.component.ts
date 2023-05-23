import { Component, OnInit } from '@angular/core';
import { ChartsService } from '../charts.service';
import { ChartType } from 'angular-google-charts';
@Component({
  selector: 'app-charts',
  templateUrl: './charts.component.html',
  styleUrls: ['./charts.component.css']
})
export class ChartsComponent implements OnInit {

//   productSalesData =[
//     [
//         "Bag",
//         9554
//     ],
//     [
//         "Blender",
//         28182
//     ],
//     [
//         "Coffee Maker",
//         2205
//     ],
//     [
//         "Computer",
//         2385
//     ],
//     [
//         "Dishwasher",
//         8138
//     ],
//     [
//         "Fridge",
//         4501
//     ],
//     [
//         "Hat",
//         15
//     ],
//     [
//         "Iron",
//         2535
//     ],
//     [
//         "Jeans",
//         2899
//     ],
//     [
//         "Microwave",
//         2828
//     ],
//     [
//         "Mixer",
//         10150
//     ],
//     [
//         "Phone",
//         14704
//     ],
//     [
//         "Sewing Machine",
//         30498
//     ],
//     [
//         "Shoes",
//         11620
//     ],
//     [
//         "T-Shirt",
//         4641
//     ],
//     [
//         "Toaster",
//         14176
//     ],
//     [
//         "TV",
//         4740
//     ],
//     [
//         "Vacuum Cleaner",
//         18630
//     ],
//     [
//         "Washing Machine",
//         1560
//     ],
//     [
//         "Watch",
//         4590
//     ]
//   ];
  // productChartType = ChartType.ColumnChart;
  productSalesData:any;
  // productChartType = ChartType.BarChart;
  productChartType = ChartType.ColumnChart;
  productChartColumns = ["Products","sales 1",{role:'tooltip'},"sales 2",{role:'tooltip'}]
  productChartTitle = 'Product Wise Analysis'
  productChartOptions = {
    // If we have 2 bars then 3rd color will be ignored.
    colors: ['blue','green','yellow'],
    // bar: {groupWidth:"95%"},
    // isStacked:true,
    animation: {startup: true, duration: 1000, easing: "in"},
    legend:{
      position:'top',
    }
  };

  YearSalesData:any;
  yearChartType = ChartType.PieChart;
  yearChartColumns = ["Year","Sales",{role:'tooltip'}]
  yearChartTitle = 'Sales By year'
  yearChartOptions = {
    colors:['red','green','blue','purple','yellow','hotpink'],
    is3D: true,
    // pieHole: 0.4,
    slices: {  4: {offset: 0.2},
               1: {offset: 0.1},
            },
    // This will set threshold below 2% jo bhi honge merge ho jayenge or color default dega or agar color change karna h toh style se change karna padega.
    // sliceVisibilityThreshold: .02,
    backgroundColor: "lightgray"
  };

  StateSalesData:any;
  StateChartType = ChartType.LineChart;
  StateChartColumns = ["STATE","TotalSales"]
  StateChartTitle = 'Product Wise Analysis on Line Graph'
  StateChartOptions = {
    // If we have 2 bars then 3rd color will be ignored.
    colors: ['blue','green','yellow'],
    // bar: {groupWidth:"95%"},
    // isStacked:true,
    animation: {startup: true, duration: 1000, easing: "in"},
    legend:{
      position:'top',
    },
    curveType: 'function',
  };

  constructor(private chartService: ChartsService) {}

  ngOnInit(): void {
    this.fetchProductBySales();
    this.fetchSalesByYear();
    this.fetchSalesByState();

  }

//   fetchProductBySales(){
//     this.productSalesData.forEach((value:any)=>{
//         value.push(value[1]+ ' Rs')
//         value.push(value[1]/2)
//         value.push(value[1]/2 + ' Rs')

//       })
//       console.warn(this.productSalesData)
//   }

fetchProductBySales(){
    this.chartService.getSalesByProduct().subscribe((response:any)=>{
      this.productSalesData = response;
      console.log(this.productSalesData)
      this.productSalesData.forEach((value:any)=>{
        value.push("Rs." + value[1])
        value.push(value[1]/2)
        value.push(value[3]/value[1]*100 + "%")  
      })
      console.log(this.productSalesData)
    })
  }

  fetchSalesByYear(){
    this.chartService.getSalesByYear().subscribe((response:any)=>{
      this.YearSalesData = response;
      console.log(this.YearSalesData)
      this.YearSalesData.forEach((value:any)=>{
        value.push(value[1] + " Rs.")
      })
    })
  }

  fetchSalesByState(){
    this.chartService.getSalesByState().subscribe((response:any)=>{
      this.StateSalesData = response;
      console.log(this.StateSalesData)
    })
  }


}
