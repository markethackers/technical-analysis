require 'technical-analysis'
require 'spec_helper'

describe 'Indicators' do
  describe "SR" do
    input_data = SpecHelper.get_test_data(:high, :low, :close)

    describe 'Stochastic Oscillator' do
      it 'Calculates SR (14 day)' do
        output = TechnicalAnalysis::Sr.calculate(input_data, period: 14, signal_period: 3)

        expected_output = [
          {:date=>"2018/10/30", :value=>{:sr=>39.746416758544726, :sr_signal=>32.241290132123396}},
          {:date=>"2018/10/31", :value=>{:sr=>70.39691289966935, :sr_signal=>46.83290323914804}},
          {:date=>"2018/11/01", :value=>{:sr=>88.91951488423378, :sr_signal=>66.35428151414929}},
          {:date=>"2018/11/02", :value=>{:sr=>10.904255319148854, :sr_signal=>56.740227701017325}},
          {:date=>"2018/11/05", :value=>{:sr=>13.123561013046874, :sr_signal=>37.649110405476506}},
          {:date=>"2018/11/06", :value=>{:sr=>21.48887183422879, :sr_signal=>15.172229388808171}},
          {:date=>"2018/11/07", :value=>{:sr=>45.203376822716805, :sr_signal=>26.605269889997487}},
          {:date=>"2018/11/08", :value=>{:sr=>39.60092095165012, :sr_signal=>35.431056536198575}},
          {:date=>"2018/11/09", :value=>{:sr=>24.174980813507332, :sr_signal=>36.326426195958085}},
          {:date=>"2018/11/12", :value=>{:sr=>1.2483574244415094, :sr_signal=>21.674753063199656}},
          {:date=>"2018/11/13", :value=>{:sr=>2.5231398354572394, :sr_signal=>9.31549269113536}},
          {:date=>"2018/11/14", :value=>{:sr=>2.388141641504267, :sr_signal=>2.0532129671343387}},
          {:date=>"2018/11/15", :value=>{:sr=>15.04254735108424, :sr_signal=>6.651276276015249}},
          {:date=>"2018/11/16", :value=>{:sr=>20.86192698325554, :sr_signal=>12.764205325281347}},
          {:date=>"2018/11/19", :value=>{:sr=>2.32807064490234, :sr_signal=>12.744181659747374}},
          {:date=>"2018/11/20", :value=>{:sr=>3.137673425827104, :sr_signal=>8.775890351328327}},
          {:date=>"2018/11/21", :value=>{:sr=>3.329837441006842, :sr_signal=>2.931860503912096}},
          {:date=>"2018/11/23", :value=>{:sr=>0.49973698053655363, :sr_signal=>2.3224159491234997}},
          {:date=>"2018/11/26", :value=>{:sr=>10.938283993978956, :sr_signal=>4.922619471840783}},
          {:date=>"2018/11/27", :value=>{:sr=>9.984947315604659, :sr_signal=>7.140989430040055}},
          {:date=>"2018/11/28", :value=>{:sr=>26.79377822378325, :sr_signal=>15.905669844455621}},
          {:date=>"2018/11/29", :value=>{:sr=>25.986013986014044, :sr_signal=>20.92157984180065}},
          {:date=>"2018/11/30", :value=>{:sr=>28.117607299763502, :sr_signal=>26.965799836520265}},
          {:date=>"2018/12/03", :value=>{:sr=>54.0861812778603, :sr_signal=>36.063267521212616}},
          {:date=>"2018/12/04", :value=>{:sr=>26.022380056253674, :sr_signal=>36.07538954462583}},
          {:date=>"2018/12/06", :value=>{:sr=>18.049737955037553, :sr_signal=>32.719433096383845}},
          {:date=>"2018/12/07", :value=>{:sr=>0.712424304917594, :sr_signal=>14.928180772069608}},
          {:date=>"2018/12/10", :value=>{:sr=>22.908293752283477, :sr_signal=>13.89015200407954}},
          {:date=>"2018/12/11", :value=>{:sr=>24.525682554372914, :sr_signal=>16.048800203857994}},
          {:date=>"2018/12/12", :value=>{:sr=>26.700601573345605, :sr_signal=>24.711525960000667}},
          {:date=>"2018/12/13", :value=>{:sr=>35.26145303100408, :sr_signal=>28.8292457195742}},
          {:date=>"2018/12/14", :value=>{:sr=>9.94909763998139, :sr_signal=>23.970384081443694}},
          {:date=>"2018/12/17", :value=>{:sr=>5.447996398018944, :sr_signal=>16.886182356334803}},
          {:date=>"2018/12/18", :value=>{:sr=>15.038271049077, :sr_signal=>10.145121695692445}},
          {:date=>"2018/12/19", :value=>{:sr=>6.963249516440942, :sr_signal=>9.149838987845628}},
          {:date=>"2018/12/20", :value=>{:sr=>5.161943319838063, :sr_signal=>9.054487961785336}},
          {:date=>"2018/12/21", :value=>{:sr=>3.1152647975077716, :sr_signal=>5.080152544595593}},
          {:date=>"2018/12/24", :value=>{:sr=>0.6703929340585003, :sr_signal=>2.9825336838014445}},
          {:date=>"2018/12/26", :value=>{:sr=>37.531039375665074, :sr_signal=>13.772232369077116}},
          {:date=>"2018/12/27", :value=>{:sr=>34.2652329749104, :sr_signal=>24.155555094877986}},
          {:date=>"2018/12/28", :value=>{:sr=>37.105465742879105, :sr_signal=>36.300579364484854}},
          {:date=>"2018/12/31", :value=>{:sr=>42.917628945342614, :sr_signal=>38.09610922104404}},
          {:date=>"2019/01/02", :value=>{:sr=>43.61046959199379, :sr_signal=>41.21118809340517}},
          {:date=>"2019/01/03", :value=>{:sr=>0.6215243702976702, :sr_signal=>29.04987430254469}},
          {:date=>"2019/01/04", :value=>{:sr=>23.1166912850812, :sr_signal=>22.449561749124218}},
          {:date=>"2019/01/07", :value=>{:sr=>22.50474383301711, :sr_signal=>15.414319829465327}},
          {:date=>"2019/01/08", :value=>{:sr=>34.27340383862123, :sr_signal=>26.631612985573174}},
          {:date=>"2019/01/09", :value=>{:sr=>44.44007858546172, :sr_signal=>33.739408752366685}}
        ]

        expect(output).to eq(expected_output)
      end

      it "Throws exception if not enough data" do
        expect {TechnicalAnalysis::Sr.calculate(input_data, period: input_data.size+1)}.to raise_exception(Validation::ValidationError)
      end
    end
  end
end
