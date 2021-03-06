package dropecho.ai.fsm;

@:expose("fsm.State")
@:nativeChildren
interface IState {
  public function getName():String;
	public function onEnter():Void;
	public function onExit():Void;
	public function tick():Void;
}
// class State<T> {
//   public var action:T->Void;
//   public var transitions:Array<T->State<T>>;
//
//   public function new(action:T->Void, ?transitions:Array<T->State<T>>) {
//     this.action = action;
//     this.transitions = transitions != null ? transitions : new Array<T->State<T>>();
//   }
//
//   public function execute(entity:T):State<T> {
//     action(entity);
//
//     for (transition in transitions) {
//       var switchState = transition(entity);
//       if (switchState != null) {
//         return switchState;
//       }
//     }
//     return this;
//   }
// }
